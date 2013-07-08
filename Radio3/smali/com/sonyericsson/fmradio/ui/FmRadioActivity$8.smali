.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

.field final synthetic val$fbLike:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->val$fbLike:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLikeAvailable(Z)V
    .locals 3
    .parameter "available"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-boolean p1, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFbAvailable:Z

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFbAvailable:Z

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->val$fbLike:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 686
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$700(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->val$fbLike:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$802(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .line 695
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->val$fbLike:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;->val$fbLike:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
