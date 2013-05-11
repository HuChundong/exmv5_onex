.class Landroid/webkit/EditableWebViewImpl$4;
.super Ljava/lang/Object;
.source "EditableWebViewImpl.java"

# interfaces
.implements Landroid/webkit/WebViewCore$UpdateContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebViewImpl;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl$4;->this$0:Landroid/webkit/EditableWebViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateContent(I)V
    .locals 3
    .parameter "pointer"

    .prologue
    const/4 v2, 0x0

    .line 920
    invoke-static {}, Landroid/webkit/HTCWebCoreImpl;->isNeedGetBodyNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl$4;->this$0:Landroid/webkit/EditableWebViewImpl;

    #getter for: Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v0}, Landroid/webkit/EditableWebViewImpl;->access$100(Landroid/webkit/EditableWebViewImpl;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl$4;->this$0:Landroid/webkit/EditableWebViewImpl;

    #getter for: Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;
    invoke-static {v0}, Landroid/webkit/EditableWebViewImpl;->access$100(Landroid/webkit/EditableWebViewImpl;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/HTCWebCoreImpl;->setBodyNode(I)V

    .line 925
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl$4;->this$0:Landroid/webkit/EditableWebViewImpl;

    #getter for: Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/EditableWebViewImpl;->access$200(Landroid/webkit/EditableWebViewImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138c

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 928
    return-void
.end method
