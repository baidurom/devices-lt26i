.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->createFavoriteDetailsDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

.field final synthetic val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;->val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    #getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;->val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/service/Tuner;->removeFavorite(I)V

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showFavoriteListDialog()V

    .line 915
    return-void
.end method
