.class Landroid/webkit/EditableSelectActionModeCallback$2;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableSelectActionModeCallback;
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
    .line 537
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$2;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 540
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$2;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$200(Landroid/webkit/EditableSelectActionModeCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$2;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$200(Landroid/webkit/EditableSelectActionModeCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$2;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/EditableSelectActionModeCallback;->mDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$202(Landroid/webkit/EditableSelectActionModeCallback;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 543
    :cond_0
    return-void
.end method
