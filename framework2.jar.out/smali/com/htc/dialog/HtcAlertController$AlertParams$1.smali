.class Lcom/htc/dialog/HtcAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p6, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1487
    if-nez p2, :cond_1

    .line 1488
    const v1, 0x209001f

    .line 1490
    .local v1, layout:I
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v3, v3, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v3, :cond_0

    .line 1491
    const v1, 0x2090020

    .line 1494
    :cond_0
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v3, v3, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1496
    .end local v1           #layout:I
    :cond_1
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1497
    .local v2, text:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1498
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-virtual {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    #calls: Lcom/htc/dialog/HtcAlertController$AlertParams;->setListItemText(Landroid/view/View;Ljava/lang/CharSequence;)V
    invoke-static {v4, v2, v3}, Lcom/htc/dialog/HtcAlertController$AlertParams;->access$800(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1500
    :cond_2
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v3, v3, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v3, :cond_3

    .line 1501
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v3, v3, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v3, p1

    .line 1502
    .local v0, isItemChecked:Z
    if-eqz v0, :cond_3

    .line 1503
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1506
    .end local v0           #isItemChecked:Z
    :cond_3
    return-object p2
.end method
