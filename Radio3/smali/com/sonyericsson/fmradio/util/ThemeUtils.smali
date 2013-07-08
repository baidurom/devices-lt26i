.class public Lcom/sonyericsson/fmradio/util/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static sAccentColor:I

.field private static sAccentColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccentColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getAccentColorFilter(Landroid/content/Context;)Landroid/graphics/ColorFilter;
    .locals 3
    .parameter "context"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/ThemeUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    .line 28
    .local v0, accentColor:I
    sget v1, Lcom/sonyericsson/fmradio/util/ThemeUtils;->sAccentColor:I

    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/sonyericsson/fmradio/util/ThemeUtils;->sAccentColorFilter:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_1

    .line 29
    :cond_0
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v1, Lcom/sonyericsson/fmradio/util/ThemeUtils;->sAccentColorFilter:Landroid/graphics/ColorFilter;

    .line 31
    :cond_1
    sget-object v1, Lcom/sonyericsson/fmradio/util/ThemeUtils;->sAccentColorFilter:Landroid/graphics/ColorFilter;

    return-object v1
.end method
