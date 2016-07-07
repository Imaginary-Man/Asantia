struct a2v {
    float4 Position : POSITION;
    float4 Color    : COLOR0;
    float2 Texcoord   : TEXCOORD0;
  };
  
    struct v2p {
    float4 Position : POSITION;
    float4 Color    : COLOR0;
    float2 Texcoord   : TEXCOORD0;
  };
  
  uniform float2 resolution;
  
void main(in a2v IN, out v2p OUT)
{
    OUT.Position = mul( gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION],IN.Position); 
    OUT.Color = IN.Color;
    OUT.Texcoord = IN.Texcoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~struct v2p {
    float4 Position : POSITION;
    float4 Color    : COLOR0;
    float2 Texcoord   : TEXCOORD0;
  };

  struct p2s {
    float4 Color    : COLOR;
  };
  
  uniform float2 resolution1;
  
#define WINDOW_SINC 0.42
#define SINC 0.92
#define AR_STRENGTH 0.0

#define halfpi  1.5707963267948966192313216916398
#define pi    3.1415926535897932384626433832795
#define wa    (WINDOW_SINC*pi)
#define wb    (SINC*pi)




const static float3 Y = float3(0.299, 0.587, 0.114);

float df(float A, float B)
{
return abs(A-B);
}



float d(float2 pt1, float2 pt2)
{
  float2 v = pt2 - pt1;
  return sqrt(dot(v,v));
}

float3 min4(float3 a, float3 b, float3 c, float3 d)
{
    return min(a, min(b, min(c, d)));
}
float3 max4(float3 a, float3 b, float3 c, float3 d)
{
    return max(a, max(b, max(c, d)));
}

float4 resampler(float4 x1)
    {
      float4 res;

      res = (x1==float4(0.0, 0.0, 0.0, 0.0)) ?  float4(wa*wb,wa*wb,wa*wb,wa*wb)  :  sin(x1*wa)*sin(x1*wb)/(x1*x1);

      return res;
    }
  
void main(in v2p IN, out p2s OUT)
{
    float3 color;
      float4x4 weights;

      float2 dx = float2(1.0, 0.0);
      float2 dy = float2(0.0, 1.0);

      float2 pc = IN.Texcoord*resolution1;

      
      float2 tc = (floor(pc-float2(0.5,0.5))+float2(0.5,0.5));
     
      weights[0] = resampler(float4(d(pc, tc    -dx    -dy), d(pc, tc           -dy), d(pc, tc    +dx    -dy), d(pc, tc+2.0*dx    -dy)));
      weights[1] = resampler(float4(d(pc, tc    -dx       ), d(pc, tc              ), d(pc, tc    +dx       ), d(pc, tc+2.0*dx       )));
      weights[2] = resampler(float4(d(pc, tc    -dx    +dy), d(pc, tc           +dy), d(pc, tc    +dx    +dy), d(pc, tc+2.0*dx    +dy)));
      weights[3] = resampler(float4(d(pc, tc    -dx+2.0*dy), d(pc, tc       +2.0*dy), d(pc, tc    +dx+2.0*dy), d(pc, tc+2.0*dx+2.0*dy)));


      dx = dx/resolution1;
      dy = dy/resolution1;
      tc = tc/resolution1;
     
     
      float3 c00 = tex2D(gm_BaseTexture, tc    -dx    -dy).xyz;
      float3 c10 = tex2D(gm_BaseTexture, tc           -dy).xyz;
      float3 c20 = tex2D(gm_BaseTexture, tc    +dx    -dy).xyz;
      float3 c30 = tex2D(gm_BaseTexture, tc+2.0*dx    -dy).xyz;
      float3 c01 = tex2D(gm_BaseTexture, tc    -dx       ).xyz;
      float3 c11 = tex2D(gm_BaseTexture, tc              ).xyz;
      float3 c21 = tex2D(gm_BaseTexture, tc    +dx       ).xyz;
      float3 c31 = tex2D(gm_BaseTexture, tc+2.0*dx       ).xyz;
      float3 c02 = tex2D(gm_BaseTexture, tc    -dx    +dy).xyz;
      float3 c12 = tex2D(gm_BaseTexture, tc           +dy).xyz;
      float3 c22 = tex2D(gm_BaseTexture, tc    +dx    +dy).xyz;
      float3 c32 = tex2D(gm_BaseTexture, tc+2.0*dx    +dy).xyz;
      float3 c03 = tex2D(gm_BaseTexture, tc    -dx+2.0*dy).xyz;
      float3 c13 = tex2D(gm_BaseTexture, tc       +2.0*dy).xyz;
      float3 c23 = tex2D(gm_BaseTexture, tc    +dx+2.0*dy).xyz;
      float3 c33 = tex2D(gm_BaseTexture, tc+2.0*dx+2.0*dy).xyz;



      color = mul(weights[0], float4x3(c00, c10, c20, c30));
      color+= mul(weights[1], float4x3(c01, c11, c21, c31));
      color+= mul(weights[2], float4x3(c02, c12, c22, c32));
      color+= mul(weights[3], float4x3(c03, c13, c23, c33));
      color = color/(dot(mul(weights, float4(1,1,1,1)), 1));



      pc = IN.Texcoord;
      c00 = tex2D(gm_BaseTexture, pc              ).xyz;
      c11 = tex2D(gm_BaseTexture, pc    +dx       ).xyz;
      c21 = tex2D(gm_BaseTexture, pc    -dx       ).xyz;
      c12 = tex2D(gm_BaseTexture, pc           +dy).xyz;
      c22 = tex2D(gm_BaseTexture, pc           -dy).xyz;


      float3 min_sample = min4(c11, c21, c12, c22);
      float3 max_sample = max4(c11, c21, c12, c22);
min_sample = min(min_sample, c00);
max_sample = max(max_sample, c00);

      float3 aux = color;

        color = clamp(color, min_sample, max_sample);
        color = lerp(aux, color, AR_STRENGTH);
 
    OUT.Color = float4(color, 1.0);

}
