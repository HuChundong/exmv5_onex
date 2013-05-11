.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$2;,
        Landroid/widget/RemoteViews$MemoryUsageCounter;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler; = null

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field mDefaultTheme:I
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

.field private final mPackage:Ljava/lang/String;

.field private mPortrait:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/widget/RemoteViews;->DEBUG:Z

    .line 132
    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2272
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 1373
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1374
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 8
    .parameter "parcel"
    .parameter "bitmapCache"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1376
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v4, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 120
    iput-object v7, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 121
    iput-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 130
    iput-boolean v5, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 1377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1380
    .local v2, mode:I
    if-nez p2, :cond_0

    .line 1381
    new-instance v6, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v6, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1387
    :goto_0
    if-nez v2, :cond_2

    .line 1388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v4, :cond_1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 1392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1393
    .local v0, count:I
    if-lez v0, :cond_3

    .line 1394
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 1395
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1397
    .local v3, tag:I
    packed-switch v3, :pswitch_data_0

    .line 1438
    :pswitch_0
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1383
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #tag:I
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1384
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 1390
    goto :goto_1

    .line 1399
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #tag:I
    :pswitch_1
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1402
    :pswitch_2
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetDrawableParameters;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1405
    :pswitch_3
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1408
    :pswitch_4
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewGroupAction;

    iget-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v5, p0, p1, v6}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1411
    :pswitch_5
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1414
    :pswitch_6
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1417
    :pswitch_7
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1420
    :pswitch_8
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1423
    :pswitch_9
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1426
    :pswitch_a
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1429
    :pswitch_b
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1432
    :pswitch_c
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1435
    :pswitch_d
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1444
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #tag:I
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 1445
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 1446
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1447
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1451
    :cond_3
    new-instance v4, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v4, p0, v7}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1452
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1453
    return-void

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3
    .parameter "landscape"
    .parameter "portrait"

    .prologue
    const/4 v2, 0x0

    .line 1344
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 120
    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 121
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 1345
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1346
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1349
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_2
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1352
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1354
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 1355
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 1358
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1360
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1361
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 1362
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 1364
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1365
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    const/4 v1, 0x0

    .line 1323
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 120
    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 121
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 1324
    iput-object p1, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1325
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1326
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1329
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1330
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1331
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RemoteViews;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1556
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 1564
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 1568
    return-void
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter "rv"

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->assimilate(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1064
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1065
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    .line 1066
    return-void
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2
    .parameter "context"

    .prologue
    .line 2089
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2090
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2091
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2092
    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2097
    .end local v0           #orientation:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2094
    .restart local v0       #orientation:I
    .restart local p0
    :cond_1
    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .parameter "v"
    .parameter "parent"
    .parameter "handler"

    .prologue
    .line 2195
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 2196
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2197
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2198
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 2199
    .local v0, a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2202
    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private prepareContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .parameter "context"

    .prologue
    .line 2206
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 2208
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2210
    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2219
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 2211
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 2212
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    move-object v0, p1

    .line 2214
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 2216
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p1

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method private recalculateMemoryUsage()V
    .locals 4

    .prologue
    .line 1504
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->clear()V

    .line 1506
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1508
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1509
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1510
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1511
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 1510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1514
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_1

    .line 1515
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 1522
    :cond_1
    :goto_1
    return-void

    .line 1518
    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 1519
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 1520
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    goto :goto_1
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .parameter "bitmapCache"

    .prologue
    .line 1528
    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1529
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1530
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1531
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1532
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1533
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1537
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1538
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1540
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .locals 1
    .parameter "viewId"
    .parameter "nestedView"

    .prologue
    .line 1581
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1582
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "parent"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 2112
    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .locals 16
    .parameter "context"
    .parameter "parent"
    .parameter "handler"

    .prologue
    .line 2117
    invoke-direct/range {p0 .. p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 2125
    .local v5, rvToApply:Landroid/widget/RemoteViews;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2126
    .local v6, timestamp1:J
    invoke-direct/range {p0 .. p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 2128
    .local v2, c:Landroid/content/Context;
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/RemoteViews;->mDefaultTheme:I

    invoke-virtual {v2, v12}, Landroid/content/Context;->setTheme(I)V

    const-string v12, "layout_inflater"

    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2131
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v3, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2132
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 2134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2135
    .local v8, timestamp2:J
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 2137
    .local v4, result:Landroid/view/View;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2138
    .local v10, timestamp3:J
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v5, v4, v0, v1}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2140
    sget-boolean v12, Landroid/widget/RemoteViews;->DEBUG:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 2141
    const-string v13, "RemoteViews.Performance"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apply:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " prepareContext:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v8, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " inflateContent:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v10, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " performApply:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " actionsCount:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    :goto_0
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " bitmapMemory:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x497a

    div-float/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_0
    return-object v4

    .line 2141
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public clone()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 1458
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1459
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    iget v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1461
    .local v2, that:Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1462
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v2, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 1470
    :cond_0
    :goto_0
    invoke-direct {v2}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1471
    return-object v2

    .line 1465
    .end local v2           #that:Landroid/widget/RemoteViews;
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1466
    .local v0, land:Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1467
    .local v1, port:Landroid/widget/RemoteViews;
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .restart local v2       #that:Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2232
    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 1486
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter "clazz"

    .prologue
    .line 2228
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "v"

    .prologue
    .line 2160
    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2161
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 9
    .parameter "context"
    .parameter "v"
    .parameter "handler"

    .prologue
    .line 2165
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2170
    .local v0, rvToApply:Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2171
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 2172
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2181
    .local v1, timestamp1:J
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    .line 2183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2184
    .local v3, timestamp2:J
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v5, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2186
    sget-boolean v5, Landroid/widget/RemoteViews;->DEBUG:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2187
    const-string v6, "RemoteViews.Performance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apply:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " prepareContext:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v7, v3, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " performApply:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " actionsCount:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bitmapMemory:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x497a

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_1
    return-void

    .line 2187
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public removeAllViews(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1591
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1592
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2053
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2054
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1929
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1930
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2064
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2065
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1940
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1941
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2006
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2007
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2028
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2029
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 1
    .parameter "viewId"
    .parameter "base"
    .parameter "format"
    .parameter "started"

    .prologue
    .line 1734
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1735
    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1737
    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "contentDescription"

    .prologue
    .line 2085
    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 2086
    return-void
.end method

.method public setDefaultTheme(I)V
    .locals 0
    .parameter "id"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/RemoteViews;->mDefaultTheme:I

    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1
    .parameter "viewId"
    .parameter "childIndex"

    .prologue
    .line 1619
    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1620
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1995
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1996
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 8
    .parameter "viewId"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 1845
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1847
    return-void
.end method

.method public setEmptyView(II)V
    .locals 1
    .parameter "viewId"
    .parameter "emptyViewId"

    .prologue
    .line 1716
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1717
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1984
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1985
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "viewId"
    .parameter "bitmap"

    .prologue
    .line 1706
    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1707
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .parameter "viewId"
    .parameter "srcId"

    .prologue
    .line 1686
    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1687
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .parameter "viewId"
    .parameter "uri"

    .prologue
    .line 1696
    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 1697
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1962
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1963
    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2075
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2076
    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0
    .parameter "isWidgetCollectionChild"

    .prologue
    .line 1497
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 1498
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1973
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1974
    return-void
.end method

.method setNotRoot()V
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 1070
    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1
    .parameter "viewId"
    .parameter "fillInIntent"

    .prologue
    .line 1814
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1815
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    .line 1775
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1776
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntentTemplate"

    .prologue
    .line 1791
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1792
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .parameter "viewId"
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 1754
    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1755
    if-nez p4, :cond_0

    .line 1756
    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1757
    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1759
    :cond_0
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1
    .parameter "viewId"
    .parameter "offset"

    .prologue
    .line 1905
    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1906
    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .parameter "appWidgetId"
    .parameter "viewId"
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1873
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 1874
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .parameter "viewId"
    .parameter "intent"

    .prologue
    .line 1885
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1886
    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1
    .parameter "viewId"
    .parameter "position"

    .prologue
    .line 1895
    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1896
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1951
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1952
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2017
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2018
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .parameter "viewId"
    .parameter "color"

    .prologue
    .line 1857
    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1858
    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .locals 8
    .parameter "viewId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1664
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1665
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 8
    .parameter "viewId"
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    .line 1676
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1677
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 1639
    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 1640
    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .locals 1
    .parameter "viewId"
    .parameter "units"
    .parameter "size"

    .prologue
    .line 1650
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1651
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2039
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2040
    return-void
.end method

.method public setViewPadding(IIIII)V
    .locals 7
    .parameter "viewId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1918
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1919
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 1629
    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1630
    return-void
.end method

.method public showNext(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1600
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string/jumbo v1, "showNext"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1601
    return-void
.end method

.method public showPrevious(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1609
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string/jumbo v1, "showPrevious"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1610
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2236
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2237
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2240
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v5, :cond_0

    .line 2241
    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v5, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 2243
    :cond_0
    iget-object v5, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2244
    iget v5, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2245
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    if-eqz v5, :cond_1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 2248
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2252
    .local v1, count:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 2254
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 2255
    .local v0, a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, v4}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2253
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    move v3, v4

    .line 2245
    goto :goto_0

    .line 2250
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #count:I
    goto :goto_1

    .line 2258
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2261
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_4

    .line 2262
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 2264
    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2265
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2267
    :cond_5
    return-void
.end method
