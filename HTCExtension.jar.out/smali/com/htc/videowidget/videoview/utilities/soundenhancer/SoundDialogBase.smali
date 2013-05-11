.class abstract Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;
.super Ljava/lang/Object;
.source "SoundDialogBase.java"


# static fields
.field private static final REFRESH_SOUND_EFFECT_LIST:I = 0x7b

.field protected static final TAG:Ljava/lang/String; = "SoundEffectDialog"


# instance fields
.field private final ID_LISTVIEW:I

.field private mCancelText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mOKText:Ljava/lang/String;

.field private mOnCancel:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnNegativeClick:Landroid/content/DialogInterface$OnClickListener;

.field private mOnPositiveClick:Landroid/content/DialogInterface$OnClickListener;

.field private mRefreshListHandler:Landroid/os/Handler;

.field private mSoundEffectAdapter:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

.field private mSoundEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    .line 35
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectAdapter:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    .line 36
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    .line 37
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 38
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 46
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 47
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnCancel:Landroid/content/DialogInterface$OnCancelListener;

    .line 48
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnNegativeClick:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOKText:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mCancelText:Ljava/lang/String;

    .line 93
    const v0, 0x75bcd15

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->ID_LISTVIEW:I

    .line 191
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase$1;-><init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mRefreshListHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectAdapter:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    return-object v0
.end method

.method private initDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 96
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    new-instance v1, Lcom/htc/widget/HtcListView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, listView:Lcom/htc/widget/HtcListView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const v3, 0x75bcd15

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setId(I)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    return-object v0
.end method


# virtual methods
.method public createSoundEffectDialog(ILjava/lang/String;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)Landroid/app/Dialog;
    .locals 7
    .parameter "currentEffect"
    .parameter "title"
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 111
    const-string v0, "SoundEffectDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSoundEffectDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 113
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 116
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->initDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, textEntryView:Landroid/view/View;
    const v0, 0x75bcd15

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    .line 120
    invoke-virtual {p0, p1, p3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->updateSoundEffectList(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    .line 122
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectAdapter:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectAdapter:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 131
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 133
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 134
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectAdapter:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v6, v2}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 136
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    .line 137
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 139
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 140
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnCancel:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 141
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOKText:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 143
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mbuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 144
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 145
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getCurrentList(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
.end method

.method public abstract getEffectFromListIndex(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
.end method

.method protected abstract getIndexFromCurrentEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
.end method

.method public getSoundList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSoundListItem(I)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract grayOutListItem(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
.end method

.method protected refreshList()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mRefreshListHandler:Landroid/os/Handler;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mRefreshListHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method

.method public refreshSoundEffectList(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
    .locals 4
    .parameter "selectIndex"
    .parameter "currentStatus"

    .prologue
    const/4 v3, 0x1

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    check-cast v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    .line 154
    .restart local v1       #item:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    iput-boolean v3, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsEnabled:Z

    .line 155
    iput-boolean v3, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsVisible:Z

    .line 156
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsSelected:Z

    .line 157
    if-ne v0, p1, :cond_0

    .line 159
    iput-boolean v3, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsSelected:Z

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->grayOutListItem(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    .line 165
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->refreshList()V

    .line 166
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "text"
    .parameter "onClick"

    .prologue
    .line 71
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnNegativeClick:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mCancelText:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "onCancel"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnCancel:Landroid/content/DialogInterface$OnCancelListener;

    .line 61
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "onItemClick"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 56
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "text"
    .parameter "onClick"

    .prologue
    .line 65
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOnPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mOKText:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public updateSoundEffectList(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
    .locals 2
    .parameter "effect"
    .parameter "currentStatus"

    .prologue
    .line 170
    invoke-virtual {p0, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->getCurrentList(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    .line 172
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->getIndexFromCurrentEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I

    move-result v0

    .line 180
    .local v0, selectIndex:I
    invoke-virtual {p0, v0, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->refreshSoundEffectList(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    goto :goto_0
.end method
