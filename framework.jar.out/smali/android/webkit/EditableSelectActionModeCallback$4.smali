.class Landroid/webkit/EditableSelectActionModeCallback$4;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontStyle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableSelectActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkit/EditableSelectActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$4;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 589
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 590
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 591
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$4;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/EditableWebViewImpl;->onEndSelect()V

    .line 592
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$4;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    .line 594
    :cond_0
    return v1
.end method
