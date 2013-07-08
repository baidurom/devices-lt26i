.class Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;
.super Ljava/lang/Object;
.source "ScaleController.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;


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

.field final synthetic val$fmBand:Lcom/stericsson/hardware/fm/FmBand;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->val$fmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;)V
    .locals 11
    .parameter "movementSource"

    .prologue
    .line 253
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getPosition()I

    move-result v2

    .line 254
    .local v2, currentPosition:I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$100(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setPosition(I)V

    .line 255
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$200(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setPosition(I)V

    .line 257
    neg-int v8, v2

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v0, v8, v9

    .line 259
    .local v0, centerPosition:I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$300(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v8

    invoke-static {v0, v8}, Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;->wrapPosition(II)I

    move-result v7

    .line 261
    .local v7, wrappedCenterPosition:I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v8

    rem-int v8, v7, v8

    sub-int v8, v0, v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 267
    .local v1, centerPositionOfSelectedFrequency:I
    sget-object v8, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->TOUCH:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    if-ne p1, v8, :cond_1

    .line 268
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v1, v8

    .line 270
    .local v6, snapPosition:I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    move-result-object v8

    const/high16 v9, 0x42c8

    const/high16 v10, 0x3f00

    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->setSpring(FF)V

    .line 271
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    move-result-object v8

    neg-int v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->setMinPosition(F)V

    .line 272
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    move-result-object v8

    neg-int v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->setMaxPosition(F)V

    .line 275
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$300(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v8

    invoke-static {v1, v8}, Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;->wrapPosition(II)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$600(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$700(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v9

    add-int v3, v8, v9

    .line 278
    .local v3, frequency:I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->val$fmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v8, v3}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$800(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v8

    if-eq v3, v8, :cond_1

    .line 279
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$900(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    .line 280
    .local v5, l:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;
    invoke-interface {v5, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;->onFrequencyChanged(I)V

    goto :goto_0

    .line 282
    .end local v5           #l:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;
    :cond_0
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    #setter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I
    invoke-static {v8, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$802(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I

    .line 285
    .end local v3           #frequency:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #snapPosition:I
    :cond_1
    return-void
.end method
