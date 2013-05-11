.class Landroid/webkit/EditableSelectActionModeCallback$12;
.super Ljava/lang/Object;
.source "EditableSelectActionModeCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 755
    iput-object p1, p0, Landroid/webkit/EditableSelectActionModeCallback$12;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 758
    packed-switch p2, :pswitch_data_0

    .line 775
    :goto_0
    check-cast p1, Lcom/htc/dialog/HtcAlertDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/dialog/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 776
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 777
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 779
    :cond_0
    return-void

    .line 761
    .restart local p1
    :pswitch_0
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback$12;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback$12;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-boolean v4, v4, Landroid/webkit/EditableSelectActionModeCallback;->bFontUnderline:Z

    if-nez v4, :cond_1

    :goto_1
    iput-boolean v1, v3, Landroid/webkit/EditableSelectActionModeCallback;->bFontUnderline:Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 765
    :pswitch_1
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback$12;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback$12;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-boolean v4, v4, Landroid/webkit/EditableSelectActionModeCallback;->bFontBold:Z

    if-nez v4, :cond_2

    :goto_2
    iput-boolean v1, v3, Landroid/webkit/EditableSelectActionModeCallback;->bFontBold:Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 769
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/EditableSelectActionModeCallback$12;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-object v4, p0, Landroid/webkit/EditableSelectActionModeCallback$12;->this$0:Landroid/webkit/EditableSelectActionModeCallback;

    iget-boolean v4, v4, Landroid/webkit/EditableSelectActionModeCallback;->bFontItalic:Z

    if-nez v4, :cond_3

    :goto_3
    iput-boolean v1, v3, Landroid/webkit/EditableSelectActionModeCallback;->bFontItalic:Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_3

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
