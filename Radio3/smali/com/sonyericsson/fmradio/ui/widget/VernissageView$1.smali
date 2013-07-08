.class Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;
.super Landroid/os/Handler;
.source "VernissageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setDynamics(Lcom/sonyericsson/fmradio/ui/widget/Dynamics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    #getter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$000(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildStart(Landroid/view/View;)I
    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$200(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    #getter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$300(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemStartOffset:I
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$102(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;I)I

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    #getter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$000(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    move-result-object v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->update(J)V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    #getter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$000(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->getPosition()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    #getter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemStartOffset:I
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$100(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)I

    move-result v2

    sub-int/2addr v1, v2

    #calls: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->scrollList(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$400(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;I)V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    #getter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$000(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    #getter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$500(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;->this$0:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    #getter for: Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->access$000(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->adjustPositionAndVelocity()V

    goto :goto_0
.end method
