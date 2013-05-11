.class public Lcom/htc/videowidget/videoview/widget/MoreButton;
.super Lcom/htc/widget/HtcIconButton;
.source "MoreButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;
    }
.end annotation


# static fields
.field public static final ID_CAPTURE_FRAME:I = 0x3

.field public static final ID_DELETE:I = 0x6

.field public static final ID_DETAIL:I = 0xc

.field public static final ID_DISPLAY_FIT:I = 0x0

.field public static final ID_DISPLAY_FULL:I = 0x1

.field public static final ID_LOCKSCREEN:I = 0x7

.field public static final ID_SELECT_PLAYER:I = 0xa

.field public static final ID_SHARE:I = 0xb

.field public static final ID_SOUND_ENHANCER:I = 0x4

.field public static final ID_SUBTITLE:I = 0x2

.field public static final ID_THREE_D_MODE:I = 0x8

.field public static final ID_TRIM:I = 0x5

.field public static final ID_TWO_D_MODE:I = 0x9

.field public static final TAG:Ljava/lang/String; = "MoreButton"


# instance fields
.field private UI_SHOW_POPWIN:I

.field private mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

.field private mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

.field private final mMenuRecordClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 53
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    .line 54
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

    .line 434
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreButton$3;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/MoreButton$3;-><init>(Lcom/htc/videowidget/videoview/widget/MoreButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mMenuRecordClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 444
    const v0, 0xe90c2

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->UI_SHOW_POPWIN:I

    .line 445
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreButton$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoview/widget/MoreButton$4;-><init>(Lcom/htc/videowidget/videoview/widget/MoreButton;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mUIHandler:Landroid/os/Handler;

    .line 259
    invoke-virtual {p0, p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setMaxLines(I)V

    .line 261
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setHorizontalFadingEdgeEnabled(Z)V

    .line 262
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->initListItem()V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 53
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    .line 54
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

    .line 434
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreButton$3;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/MoreButton$3;-><init>(Lcom/htc/videowidget/videoview/widget/MoreButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mMenuRecordClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 444
    const v0, 0xe90c2

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->UI_SHOW_POPWIN:I

    .line 445
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreButton$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoview/widget/MoreButton$4;-><init>(Lcom/htc/videowidget/videoview/widget/MoreButton;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mUIHandler:Landroid/os/Handler;

    .line 268
    invoke-virtual {p0, p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setMaxLines(I)V

    .line 270
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setHorizontalFadingEdgeEnabled(Z)V

    .line 271
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->initListItem()V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 53
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    .line 54
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

    .line 434
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreButton$3;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/MoreButton$3;-><init>(Lcom/htc/videowidget/videoview/widget/MoreButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mMenuRecordClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 444
    const v0, 0xe90c2

    iput v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->UI_SHOW_POPWIN:I

    .line 445
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreButton$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoview/widget/MoreButton$4;-><init>(Lcom/htc/videowidget/videoview/widget/MoreButton;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mUIHandler:Landroid/os/Handler;

    .line 277
    invoke-virtual {p0, p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setMaxLines(I)V

    .line 279
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setHorizontalFadingEdgeEnabled(Z)V

    .line 280
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->initListItem()V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/widget/MoreButton;)Lcom/htc/widget/ListPopupBubbleWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/videowidget/videoview/widget/MoreButton;Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/videowidget/videoview/widget/MoreButton;Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;)Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/widget/MoreButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->UI_SHOW_POPWIN:I

    return v0
.end method

.method public static getFunctionStringById(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 111
    const-string v0, "Known"

    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    const-string v0, "Display Mode FIT"

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "Display Mode FULL"

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v0, "Subtitle"

    goto :goto_0

    .line 91
    :pswitch_3
    const-string v0, "Capture Mode"

    goto :goto_0

    .line 93
    :pswitch_4
    const-string v0, "Sound Enhancer"

    goto :goto_0

    .line 95
    :pswitch_5
    const-string v0, "Trim"

    goto :goto_0

    .line 97
    :pswitch_6
    const-string v0, "Delete"

    goto :goto_0

    .line 99
    :pswitch_7
    const-string v0, "Lock Control"

    goto :goto_0

    .line 101
    :pswitch_8
    const-string v0, "3D Mode"

    goto :goto_0

    .line 103
    :pswitch_9
    const-string v0, "2D Mode"

    goto :goto_0

    .line 105
    :pswitch_a
    const-string v0, "Select Player"

    goto :goto_0

    .line 107
    :pswitch_b
    const-string v0, "Share"

    goto :goto_0

    .line 109
    :pswitch_c
    const-string v0, "detail"

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getShowList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const-string v3, "MoreButton"

    const-string v4, "getShowList()"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v2, showList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;>;"
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 216
    :cond_0
    return-object v2

    .line 207
    :cond_1
    const/4 v1, 0x0

    .line 208
    .local v1, item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    check-cast v1, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .line 211
    .restart local v1       #item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initListItem()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    const-string v2, "MoreButton"

    const-string v3, "initListItem()"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 127
    .local v1, res:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 129
    const-string v2, "MoreButton"

    const-string v3, "[initListItem] res is null"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 135
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    const v2, 0x204031e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 139
    .local v0, record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x609000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 143
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 144
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x6090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 148
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 149
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x6090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 153
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 154
    invoke-virtual {v0, v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setToggleVisibility(Z)V

    .line 155
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x2040249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6020011

    invoke-direct {v0, v2, v3}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 160
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x6090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 164
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 165
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x2040259

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 169
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 170
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x6090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 174
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x6090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 178
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 179
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x6090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 183
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 184
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x6090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 188
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x204026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 192
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 193
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .end local v0           #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    const v2, 0x2040286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;-><init>(Ljava/lang/String;I)V

    .line 196
    .restart local v0       #record:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, v5}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 197
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private measureContentWidth(Landroid/widget/Adapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 383
    const/4 v6, 0x0

    .line 384
    .local v6, width:I
    const/4 v3, 0x0

    .line 385
    .local v3, itemType:I
    const/4 v4, 0x0

    .line 386
    .local v4, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 387
    .local v7, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 388
    .local v1, heightMeasureSpec:I
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 389
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 391
    invoke-interface {p1, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    .line 392
    .local v5, positionType:I
    if-eq v5, v3, :cond_0

    .line 394
    move v3, v5

    .line 395
    const/4 v4, 0x0

    .line 397
    :cond_0
    invoke-interface {p1, v2, v9, v9}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 398
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 399
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v5           #positionType:I
    :cond_1
    return v6
.end method

.method private popupBubbleInit()V
    .locals 4

    .prologue
    .line 343
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v2, :cond_1

    .line 345
    new-instance v2, Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 346
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 347
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    new-instance v3, Lcom/htc/videowidget/videoview/widget/MoreButton$1;

    invoke-direct {v3, p0}, Lcom/htc/videowidget/videoview/widget/MoreButton$1;-><init>(Lcom/htc/videowidget/videoview/widget/MoreButton;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 358
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getShowList()Ljava/util/ArrayList;

    move-result-object v1

    .line 359
    .local v1, showList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;>;"
    new-instance v2, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    .line 360
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    new-instance v3, Lcom/htc/videowidget/videoview/widget/MoreButton$2;

    invoke-direct {v3, p0}, Lcom/htc/videowidget/videoview/widget/MoreButton$2;-><init>(Lcom/htc/videowidget/videoview/widget/MoreButton;)V

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;->setListener(Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;)V

    .line 368
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    move-object v0, p0

    .line 370
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 372
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v2, v0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoview/widget/MoreButton;->measureContentWidth(Landroid/widget/Adapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 375
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mMenuRecordClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 376
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 378
    .end local v0           #anchor:Landroid/view/View;
    .end local v1           #showList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public getFunctionState(I)Z
    .locals 2
    .parameter "nFunctionID"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .line 320
    .local v0, item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getVisibility()Z

    move-result v1

    .line 325
    .end local v0           #item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFunctionToggleState(I)Z
    .locals 2
    .parameter "nFunctionID"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .line 333
    .local v0, item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getToggleState()Z

    move-result v1

    .line 338
    .end local v0           #item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 415
    const-string v0, "MoreButton"

    const-string v1, "hide()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 420
    :cond_0
    return-void
.end method

.method public invokeFunction(IZZ)V
    .locals 4
    .parameter "nFunctionID"
    .parameter "isEnable"
    .parameter "bToggleState"

    .prologue
    .line 299
    const-string v1, "MoreButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeFunction(), nFunctionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getFunctionStringById(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toggle state ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .line 303
    .local v0, item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setVisibility(Z)V

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getToggleVisibility()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 308
    invoke-virtual {v0, p3}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setToggleState(Z)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->refresh()V

    .line 313
    .end local v0           #item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 286
    const-string v0, "MoreButton"

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->popupBubbleInit()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mUIHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->UI_SHOW_POPWIN:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;->onMoreButtonClick()V

    .line 295
    :cond_2
    return-void
.end method

.method onSelecetListItem(IZZ)V
    .locals 7
    .parameter "position"
    .parameter "isToggleChange"
    .parameter "toggleState"

    .prologue
    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, visibleCount:I
    const/4 v1, 0x0

    .line 223
    .local v1, correctPositon:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 227
    if-ne v3, p1, :cond_3

    .line 229
    move v1, v2

    .line 235
    :cond_0
    const-string v4, "MoreButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSelecetListItem(), positon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", correctPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getFunctionStringById(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .line 239
    .local v0, correctItem:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    if-eqz p2, :cond_5

    .line 241
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getToggleState()Z

    move-result v4

    if-eq v4, p3, :cond_1

    .line 242
    invoke-virtual {v0, p3}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setToggleState(Z)V

    .line 252
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

    if-eqz v4, :cond_2

    .line 253
    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getToggleState()Z

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;->onMoreListItemClick(IZ)V

    .line 254
    :cond_2
    return-void

    .line 232
    .end local v0           #correctItem:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 223
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .restart local v0       #correctItem:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    :cond_5
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getToggleVisibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->getToggleState()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v0, v4}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setToggleState(Z)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 424
    const-string v1, "MoreButton"

    const-string v2, "refresh()"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getShowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 428
    .local v0, showList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;>;"
    new-instance v1, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    .line 429
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 430
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->measureContentWidth(Landroid/widget/Adapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 432
    .end local v0           #showList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;>;"
    :cond_0
    return-void
.end method

.method public setListItemText(II)V
    .locals 1
    .parameter "itemId"
    .parameter "stringId"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->setListItemText(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public setListItemText(ILjava/lang/String;)V
    .locals 4
    .parameter "itemId"
    .parameter "string"

    .prologue
    .line 73
    const-string v1, "MoreButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setListItemString], itemId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getFunctionStringById(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", String = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;

    .line 77
    .local v0, item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    invoke-virtual {v0, p2}, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->setName(Ljava/lang/String;)V

    .line 79
    .end local v0           #item:Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mListener:Lcom/htc/videowidget/videoview/widget/MoreButton$IOnMoreListener;

    .line 64
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "MoreButton"

    const-string v1, "show()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 411
    :cond_0
    return-void
.end method
