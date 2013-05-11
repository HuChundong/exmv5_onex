.class Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;
.super Ljava/lang/Object;
.source "IidaAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->createListView(Lcom/kddi/android/iida/widget/IidaAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/kddi/android/iida/widget/IidaAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;Landroid/widget/ListView;Lcom/kddi/android/iida/widget/IidaAlertController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iput-object p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->val$dialog:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v0, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v0, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->this$0:Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;

    iget-object v0, v0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->val$dialog:Lcom/kddi/android/iida/widget/IidaAlertController;

    #getter for: Lcom/kddi/android/iida/widget/IidaAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->access$600(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1349
    return-void
.end method
