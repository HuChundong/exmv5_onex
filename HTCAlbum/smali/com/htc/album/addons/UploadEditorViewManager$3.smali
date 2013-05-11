.class Lcom/htc/album/addons/UploadEditorViewManager$3;
.super Ljava/lang/Object;
.source "UploadEditorViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorViewManager;->attachTo(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorViewManager;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorViewManager;->access$200(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 405
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager$3;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #getter for: Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;
    invoke-static {v1}, Lcom/htc/album/addons/UploadEditorViewManager;->access$300(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 407
    :cond_0
    return v2
.end method
