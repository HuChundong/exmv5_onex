.class Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"

# interfaces
.implements Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageSelectorResultCallback"
.end annotation


# instance fields
.field protected mIsTextHasChanged:Z

.field final synthetic this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->mIsTextHasChanged:Z

    return-void
.end method


# virtual methods
.method public onResult(ILcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;)V
    .locals 7
    .parameter "resultCode"
    .parameter "newSelectedStorageInfo"

    .prologue
    .line 463
    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_3

    .line 465
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v1, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    .line 466
    .local v1, oldSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iput-object p2, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    .line 468
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    const v5, 0x7f090068

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimButton;

    .line 469
    .local v2, rimButton:Lcom/htc/widget/HtcRimButton;
    if-eqz v2, :cond_0

    .line 471
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    invoke-virtual {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    const v5, 0x7f090066

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 475
    .local v3, text:Lcom/htc/widget/HtcAutoCompleteTextView;
    if-eqz v3, :cond_1

    .line 477
    invoke-virtual {v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 478
    .local v0, lastText:Ljava/lang/CharSequence;
    iget-boolean v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->mIsTextHasChanged:Z

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->mAutoGenerateFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->mAutoGenerateFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .end local v0           #lastText:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const-string v4, "PickerFolderCreateHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    invoke-virtual {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->this$1:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    iget-object v6, v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    invoke-virtual {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v1           #oldSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    .end local v2           #rimButton:Lcom/htc/widget/HtcRimButton;
    .end local v3           #text:Lcom/htc/widget/HtcAutoCompleteTextView;
    :goto_1
    return-void

    .line 481
    .restart local v0       #lastText:Ljava/lang/CharSequence;
    .restart local v1       #oldSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    .restart local v2       #rimButton:Lcom/htc/widget/HtcRimButton;
    .restart local v3       #text:Lcom/htc/widget/HtcAutoCompleteTextView;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;->mIsTextHasChanged:Z

    goto :goto_0

    .line 488
    .end local v0           #lastText:Ljava/lang/CharSequence;
    .end local v1           #oldSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    .end local v2           #rimButton:Lcom/htc/widget/HtcRimButton;
    .end local v3           #text:Lcom/htc/widget/HtcAutoCompleteTextView;
    :cond_3
    const-string v4, "PickerFolderCreateHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[StorageSelectorResultCallback] resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", storageInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
