.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showPhfMissingDialog()V
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
    .line 632
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onBackPressed()V

    .line 636
    return-void
.end method
