.class Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;
.super Ljava/lang/Object;
.source "ScaleController.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/scale/ScaleController;-><init>(Landroid/widget/RelativeLayout;Lcom/stericsson/hardware/fm/FmBand;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChanged()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$800(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v1

    sget-object v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->NONE:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V

    .line 296
    return-void
.end method
