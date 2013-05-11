.class Landroid/webkit/EditableSelectActionModeCallback$6;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 555
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 558
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 559
    packed-switch p2, :pswitch_data_0

    .line 575
    :goto_0
    return-void

    .line 561
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$000(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontsize(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$400(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V

    goto :goto_0

    .line 564
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$000(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogFontcolor(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$500(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V

    goto :goto_0

    .line 567
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$000(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogSettings(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$600(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V

    goto :goto_0

    .line 570
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v1, p0, Landroid/webkit/EditableSelectActionModeCallback$6;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$000(Landroid/webkit/EditableSelectActionModeCallback;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableSelectActionModeCallback;->onCreateDialogAlignment(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableSelectActionModeCallback;->access$700(Landroid/webkit/EditableSelectActionModeCallback;Landroid/content/Context;)V

    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
