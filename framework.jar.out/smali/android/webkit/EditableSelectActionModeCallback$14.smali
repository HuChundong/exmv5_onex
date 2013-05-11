.class Landroid/webkit/EditableSelectActionModeCallback$14;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogAlignment(Landroid/content/Context;)V
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
    .line 815
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$14;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 818
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 820
    packed-switch p2, :pswitch_data_0

    .line 836
    :goto_0
    return-void

    .line 822
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$14;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/EditableWebViewImpl;->alignLeft()V

    .line 823
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$14;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 826
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$14;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/EditableWebViewImpl;->alignJustified()V

    .line 827
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$14;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 830
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$14;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #getter for: Landroid/webkit/EditableSelectActionModeCallback;->mEditableWebViewImpl:Landroid/webkit/EditableWebViewImpl;
    invoke-static {v0}, Landroid/webkit/EditableSelectActionModeCallback;->access$300(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/webkit/EditableWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/EditableWebViewImpl;->alignRight()V

    .line 831
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$14;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/EditableSelectActionModeCallback;->finish()V

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
