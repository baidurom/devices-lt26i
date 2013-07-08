.class Lcom/sonyericsson/fmradio/service/FmParams;
.super Ljava/lang/Object;
.source "FmParams.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFmBand(Landroid/content/Context;)Lcom/stericsson/hardware/fm/FmBand;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 48
    .local v3, resources:Landroid/content/res/Resources;
    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 49
    .local v2, minFrequency:I
    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 50
    .local v1, maxFrequency:I
    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 51
    .local v0, channelOffset:I
    new-instance v4, Lcom/stericsson/hardware/fm/FmBand;

    invoke-direct {v4, v2, v1, v0, v2}, Lcom/stericsson/hardware/fm/FmBand;-><init>(IIII)V

    return-object v4
.end method
