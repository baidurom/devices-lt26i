.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->createFavoriteListDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 832
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 833
    check-cast v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    .line 834
    .local v0, fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/fmradio/service/Tuner;->setFrequency(I)V

    .line 835
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-virtual {v2, v4, v4}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 836
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 838
    .end local v0           #fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    :cond_0
    return-void
.end method
