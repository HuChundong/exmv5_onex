.class Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSupportStorages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$1000(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSupportStorages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$1000(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 602
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 608
    if-nez p2, :cond_0

    .line 610
    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    iget-object v3, v3, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$200(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 611
    invoke-virtual {p2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 613
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/StorageInfo;

    .line 615
    .local v0, info:Lcom/htc/album/helper/StorageInfo;
    const v3, 0x7f090029

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemSingleText;

    .line 616
    .local v2, singleText:Lcom/htc/widget/HtcListItemSingleText;
    invoke-virtual {v0}, Lcom/htc/album/helper/StorageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItemSingleText;->setClickable(Z)V

    .line 619
    const v3, 0x7f090069

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRadioButton;

    .line 620
    .local v1, radioButton:Lcom/htc/widget/HtcRadioButton;
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRadioButton;->setClickable(Z)V

    .line 621
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRadioButton;->setFocusable(Z)V

    .line 622
    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR$StorageAdapter;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    invoke-static {v3}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;->access$800(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;)Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/helper/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 626
    :goto_0
    return-object p2

    .line 625
    :cond_1
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_0
.end method
