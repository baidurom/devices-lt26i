.class public Lcom/sonyericsson/fmradio/util/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# static fields
.field private static final SYSTEM_SOMADIGITLIGHT_FONT:Ljava/lang/String; = "/system/fonts/SoMADigitLight.ttf"

.field private static sLightFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLightFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/fmradio/util/FontUtils;->sLightFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 25
    const-string v0, "/system/fonts/SoMADigitLight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/fmradio/util/FontUtils;->sLightFont:Landroid/graphics/Typeface;

    .line 27
    :cond_0
    sget-object v0, Lcom/sonyericsson/fmradio/util/FontUtils;->sLightFont:Landroid/graphics/Typeface;

    return-object v0
.end method
