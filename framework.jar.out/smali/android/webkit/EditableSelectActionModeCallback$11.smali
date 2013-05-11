.class Landroid/webkit/EditableSelectActionModeCallback$11;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogSettings(Landroid/content/Context;)V
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
    .line 781
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 784
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-boolean v3, v2, Landroid/webkit/EditableSelectActionModeCallback;->bFontUnderline:Z

    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v2}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/EditableWebViewImpl;->getUnderlineState()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_0

    .line 785
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v2}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/EditableWebViewImpl;->toggleUnderline()V

    .line 786
    :cond_0
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-boolean v3, v2, Landroid/webkit/EditableSelectActionModeCallback;->bFontBold:Z

    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v2}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/EditableWebViewImpl;->getBoldState()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    if-eq v3, v2, :cond_1

    .line 787
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v2}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/EditableWebViewImpl;->toggleBold()V

    .line 788
    :cond_1
    iget-object v2, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-boolean v2, v2, Landroid/webkit/EditableSelectActionModeCallback;->bFontItalic:Z

    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v3}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/EditableWebViewImpl;->getItalicState()I

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    if-eq v2, v0, :cond_2

    .line 789
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/EditableWebViewImpl;->toggleItalic()V

    .line 792
    :cond_2
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/EditableWebViewImpl;->onEndSelect()V

    .line 793
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$11;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    .line 795
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 796
    return-void

    :cond_3
    move v2, v1

    .line 784
    goto :goto_0

    :cond_4
    move v2, v1

    .line 786
    goto :goto_1

    :cond_5
    move v0, v1

    .line 788
    goto :goto_2
.end method
