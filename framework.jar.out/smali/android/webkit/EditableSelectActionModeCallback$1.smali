.class Landroid/webkit/EditableSelectActionModeCallback$1;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 529
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$1;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$1;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$1;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$000(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontStyle(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$100(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V

    .line 533
    return-void
.end method
