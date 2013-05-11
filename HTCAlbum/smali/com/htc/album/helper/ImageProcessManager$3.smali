.class Lcom/htc/album/helper/ImageProcessManager$3;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ImageProcessManager;->OnMenuItemSelected(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ImageProcessManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$3;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2333
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2335
    return-void
.end method
