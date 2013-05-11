.class public Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_FOLDER_CREATE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;
    }
.end annotation


# instance fields
.field mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

.field mDialogMainView:Landroid/widget/LinearLayout;

.field mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

.field mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field mSupportStoragesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, supportStoragesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;>;"
    const/4 v0, 0x0

    .line 308
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    .line 298
    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSupportStoragesList:Ljava/util/ArrayList;

    .line 299
    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    .line 301
    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    .line 302
    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 303
    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

    .line 309
    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSupportStoragesList:Ljava/util/ArrayList;

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    .line 311
    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->popUpStorageSelector(Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V

    return-void
.end method

.method private popUpStorageSelector(Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V
    .locals 7
    .parameter
    .parameter "selectedStorage"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, supportStorages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;>;"
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    #calls: Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$600(Lcom/htc/album/helper/PickerFolderCreateHelper;Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Landroid/content/Context;Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 450
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 451
    .local v6, fm:Landroid/app/FragmentManager;
    if-eqz v6, :cond_1

    .line 452
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    const-string v1, "DLG_STORAGE_SELECTOR"

    invoke-virtual {v0, v6, v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_1
    const-string v0, "PickerFolderCreateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[popUpCreaetFolderDialog] fm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMainView()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 316
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$200(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03003a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 318
    .local v0, dialogview:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListViweDefaultBackground(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 321
    const v4, 0x7f090066

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 323
    .local v1, folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;
    if-eqz v1, :cond_0

    .line 325
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->mAutoGenerateFileName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 326
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->mAutoGenerateFileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :goto_0
    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xff

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v8

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 331
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 337
    :cond_0
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSupportStoragesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 340
    const v4, 0x7f090067

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    .line 341
    .local v2, listitem:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 344
    const v4, 0x7f090068

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimButton;

    .line 345
    .local v3, rimButton:Lcom/htc/widget/HtcRimButton;
    new-instance v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;)V

    iput-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

    .line 346
    new-instance v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    invoke-virtual {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .end local v2           #listitem:Lcom/htc/widget/HtcListItem;
    .end local v3           #rimButton:Lcom/htc/widget/HtcRimButton;
    :cond_1
    return-object v0

    .line 328
    :cond_2
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0195

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const-string v1, "DLG_FOLDER_CREATE"

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->doCancel(Ljava/lang/String;)V

    .line 432
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 433
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->getMainView()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    .line 365
    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f090066

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 367
    .local v2, folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0057

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20401ee

    new-instance v5, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$3;

    invoke-direct {v5, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$3;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x2040174

    new-instance v5, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;

    invoke-direct {v5, p0, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;Lcom/htc/widget/HtcAutoCompleteTextView;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 420
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 424
    .local v1, dialogInstance:Lcom/htc/widget/HtcAlertDialog;
    new-instance v3, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;-><init>(Landroid/view/View;Lcom/htc/widget/HtcAlertDialog;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 425
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    #calls: Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$600(Lcom/htc/album/helper/PickerFolderCreateHelper;Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    .line 441
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 442
    return-void
.end method
