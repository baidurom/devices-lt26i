.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$11;
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
    .line 816
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$11;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$11;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 821
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$11;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    check-cast v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    .end local v0           #tag:Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showFavoriteDetailsDialog(Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;Z)V

    .line 823
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$11;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 825
    :cond_0
    return-void
.end method
