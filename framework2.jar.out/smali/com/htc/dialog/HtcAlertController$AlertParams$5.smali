.class Lcom/htc/dialog/HtcAlertController$AlertParams$5;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/dialog/HtcAlertController;


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Lcom/htc/dialog/HtcAlertController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$5;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$5;->val$dialog:Lcom/htc/dialog/HtcAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$5;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$5;->val$dialog:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$600(Lcom/htc/dialog/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1614
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$5;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$5;->val$dialog:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/htc/dialog/HtcAlertController;->access$600(Lcom/htc/dialog/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1617
    :cond_0
    return-void
.end method
