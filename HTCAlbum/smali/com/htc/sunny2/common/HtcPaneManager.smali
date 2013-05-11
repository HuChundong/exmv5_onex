.class public Lcom/htc/sunny2/common/HtcPaneManager;
.super Ljava/lang/Object;
.source "HtcPaneManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcPaneManager"

.field public static PANE_LEFT:I

.field public static PANE_RIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLandscapePane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;
    .locals 8
    .parameter "context"
    .parameter "bIsFullscreen"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    const/4 v4, 0x0

    .line 49
    .local v4, paneRect:[Lcom/htc/app/mf/PaneRect;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneLeftWidth(Landroid/content/Context;)I

    move-result v1

    .line 52
    .local v1, nPaneLeft:I
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneRightWidth(Landroid/content/Context;)I

    move-result v2

    .line 53
    .local v2, nPaneRight:I
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsableLandscapeHeight(Landroid/content/Context;)I

    move-result v0

    .line 56
    .local v0, nPaneHeight:I
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/htc/app/mf/PaneRect;

    .end local v4           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v6, v6, v1, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v1, v6, v2, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v7

    .line 77
    .end local v1           #nPaneLeft:I
    .end local v2           #nPaneRight:I
    .restart local v4       #paneRect:[Lcom/htc/app/mf/PaneRect;
    :goto_0
    return-object v4

    .line 65
    .end local v0           #nPaneHeight:I
    :cond_0
    const/4 v0, 0x0

    .line 66
    .restart local v0       #nPaneHeight:I
    if-eqz p1, :cond_1

    .line 67
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsableLandscapeHeight4PhoneFullscreenMode(Landroid/content/Context;)I

    move-result v0

    .line 71
    :goto_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneWidthLand(Landroid/content/Context;)I

    move-result v3

    .line 72
    .local v3, nPaneWidth:I
    new-array v4, v7, [Lcom/htc/app/mf/PaneRect;

    .end local v4           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v6, v6, v3, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v6

    .restart local v4       #paneRect:[Lcom/htc/app/mf/PaneRect;
    goto :goto_0

    .line 69
    .end local v3           #nPaneWidth:I
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsableLandscapeHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public static getPortraitPane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;
    .locals 6
    .parameter "context"
    .parameter "bIsFullscreen"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, paneRect:[Lcom/htc/app/mf/PaneRect;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsablePortraitHeight(Landroid/content/Context;)I

    move-result v0

    .line 86
    .local v0, nPaneHeight:I
    new-array v2, v4, [Lcom/htc/app/mf/PaneRect;

    .end local v2           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v3, Lcom/htc/app/mf/PaneRect;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v5, v4, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v3, v2, v5

    .line 104
    .restart local v2       #paneRect:[Lcom/htc/app/mf/PaneRect;
    :goto_0
    return-object v2

    .line 93
    .end local v0           #nPaneHeight:I
    :cond_0
    const/4 v0, 0x0

    .line 94
    .restart local v0       #nPaneHeight:I
    if-eqz p1, :cond_1

    .line 95
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsablePortraitHeight4PhoneFullscreenMode(Landroid/content/Context;)I

    move-result v0

    .line 98
    :goto_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneWidthPort(Landroid/content/Context;)I

    move-result v1

    .line 99
    .local v1, nPaneWidth:I
    new-array v2, v4, [Lcom/htc/app/mf/PaneRect;

    .end local v2           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v3, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v3, v5, v5, v1, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v3, v2, v5

    .restart local v2       #paneRect:[Lcom/htc/app/mf/PaneRect;
    goto :goto_0

    .line 97
    .end local v1           #nPaneWidth:I
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsablePortraitHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, bResult:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 40
    .local v1, nOrientation:I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    return v0
.end method

.method public static onMeasuredWidthAndHeight(Landroid/content/Context;ZZ)[I
    .locals 5
    .parameter "context"
    .parameter "bIs2Pane"
    .parameter "bIsPaneRight"

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 296
    .local v0, met:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 297
    .local v2, nWidth:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 299
    .local v1, nHeight:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 302
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneRightWidth(Landroid/content/Context;)I

    move-result v2

    .line 304
    :cond_0
    add-int/lit8 v2, v2, -0xa

    .line 305
    add-int/lit8 v1, v1, -0xc

    .line 320
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3

    .line 309
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_LAND:I

    .line 312
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_HEIGHT_LAND:I

    goto :goto_0

    .line 316
    :cond_2
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_PORT:I

    .line 317
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_HEIGHT_PORT:I

    goto :goto_0
.end method

.method public static onMeasuredWidthAndHeight(Landroid/content/Context;ZZII)[I
    .locals 4
    .parameter "context"
    .parameter "bIs2Pane"
    .parameter "bIsPaneRight"
    .parameter "givenWidth"
    .parameter "givenHeight"

    .prologue
    .line 325
    move v1, p3

    .line 326
    .local v1, nWidth:I
    move v0, p4

    .line 336
    .local v0, nHeight:I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method

.method public static onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;ZZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "actionBarControl"
    .parameter "clickListener"
    .parameter "actionBarGesture"
    .parameter "bEnableActionBarUpdate"
    .parameter "bEnableBackButton"
    .parameter "bEnableTouch"
    .parameter "bIsHostScene"
    .parameter "bEnableAppButton"
    .parameter "bEnableFullscreen"
    .parameter "szMainTitle"
    .parameter "szSecondaryTitle"

    .prologue
    const/4 v2, 0x0

    .line 148
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 214
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local p0
    :cond_1
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 152
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v0, :cond_2

    .line 154
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "HtcPaneManager"

    const-string v2, "[HTCAlbum][HtcPaneManager][onPrepareHtcActionBar]: the action bar is null "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {v0, p5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 163
    if-eqz p5, :cond_4

    .line 164
    invoke-interface {v0, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :goto_1
    if-eqz p6, :cond_5

    .line 172
    const/4 v1, 0x1

    invoke-interface {v0, v1, p0, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V

    .line 179
    :goto_2
    invoke-interface {v0, p8, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    .line 180
    if-eqz p8, :cond_3

    .line 182
    if-eqz p7, :cond_6

    .line 184
    instance-of v1, p0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v1, :cond_3

    .line 185
    check-cast p0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .end local p0
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enableDropList()V

    .line 196
    :cond_3
    :goto_3
    if-eqz p9, :cond_7

    .line 197
    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 205
    :goto_4
    if-eqz p10, :cond_8

    .line 206
    invoke-interface {v0, p10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 210
    :goto_5
    if-eqz p11, :cond_9

    .line 211
    invoke-interface {v0, p11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .restart local p0
    :cond_4
    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 174
    :cond_5
    const/4 v1, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V

    goto :goto_2

    .line 189
    :cond_6
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->enableDropList()V

    goto :goto_3

    .line 199
    .end local p0
    :cond_7
    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    goto :goto_4

    .line 208
    :cond_8
    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_5

    .line 213
    :cond_9
    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "activity"
    .parameter "actionBarControl"
    .parameter "clickListener"
    .parameter "bEnableActionBarUpdate"
    .parameter "bEnableBackButton"
    .parameter "bEnableAppButton"
    .parameter "bEnableFullscreen"
    .parameter "szMainTitle"
    .parameter "szSecondaryTitle"

    .prologue
    .line 117
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Lcom/htc/sunny2/common/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;ZZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static paneHeight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, nHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 286
    .local v1, nOrientation:I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 287
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_HEIGHT_LAND:I

    .line 290
    :goto_0
    return v0

    .line 289
    :cond_0
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_HEIGHT_PORT:I

    goto :goto_0
.end method

.method public static paneLeftWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, nWidth:I
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_LEFT:I

    .line 238
    return v0
.end method

.method public static paneRightWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, nWidth:I
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_RIGHT:I

    .line 244
    return v0
.end method

.method public static paneUsableLandscapeHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, nHeight:I
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_USABLE_HEIGHT_LAND:I

    .line 259
    return v0
.end method

.method public static paneUsableLandscapeHeight4PhoneFullscreenMode(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, nHeight:I
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_USABLE_HEIGHT_LAND_PHONE:I

    .line 271
    return v0
.end method

.method public static paneUsablePortraitHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, nHeight:I
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_USABLE_HEIGHT_PORT:I

    .line 253
    return v0
.end method

.method public static paneUsablePortraitHeight4PhoneFullscreenMode(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, nHeight:I
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_USABLE_HEIGHT_PORT_PHONE:I

    .line 265
    return v0
.end method

.method public static paneWidthLand(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, nWidth:I
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_LAND:I

    .line 229
    return v0
.end method

.method public static paneWidthPort(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, nWidth:I
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_PORT:I

    .line 223
    return v0
.end method
