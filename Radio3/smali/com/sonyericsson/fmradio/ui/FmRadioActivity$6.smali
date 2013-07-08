.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onTunerAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrequencyChanged(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/Tuner;->setFrequency(I)V

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$300(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$200(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #calls: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateRdsInfo(I)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$400(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;I)V

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #calls: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateFavoriteButtons(I)V
    invoke-static {v0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$500(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;I)V

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onSignalStrengthChanged(I)V

    .line 445
    return-void
.end method
