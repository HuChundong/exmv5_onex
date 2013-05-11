.class public Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "LandingPageCacheThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/LandingPageCacheThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabPluginFileCache"
.end annotation


# static fields
.field public static final FILE_CACHE_VERSION:I = 0x1


# instance fields
.field private mDrawableResSet:[I

.field private mIndicatorLabelRes:I

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private mPluginClassName:Ljava/lang/String;

.field private mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

.field private mPluginPackageName:Ljava/lang/String;

.field private mTabName:Ljava/lang/String;

.field private mTabTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/plugin/TabPlugin;)V
    .locals 3
    .parameter "plugin"

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 454
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabName:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIntent:Landroid/content/Intent;

    .line 456
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v1

    iput v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIndicatorLabelRes:I

    .line 457
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mDrawableResSet:[I

    .line 458
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPackageName:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, name:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginPackageName:Ljava/lang/String;

    .line 463
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginClassName:Ljava/lang/String;

    .line 465
    iput-object p1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    .line 466
    return-void
.end method

.method private parseBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .parameter "b"

    .prologue
    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, bundleData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 568
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 570
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    const/4 v4, 0x0

    .line 573
    .local v4, value:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 574
    .local v3, v:Ljava/lang/Object;
    instance-of v5, v3, Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 576
    check-cast v3, Landroid/content/Intent;

    .end local v3           #v:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->parseIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 582
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    .restart local v3       #v:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 585
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #v:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->capListObjHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private parseIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 537
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v2, output:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 545
    .local v1, comName:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 547
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :goto_0
    iget-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 557
    .local v0, b:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->parseBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #comName:Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 552
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_1
    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .parameter "inString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 610
    .local v6, output:Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->removeListObjHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 611
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 613
    .local v7, pairs:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 615
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 617
    .local v4, key:Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 620
    .local v5, obj:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v5}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->restoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 621
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 623
    :catch_0
    move-exception v1

    .line 625
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "LandingPageCacheThread"

    const-string v9, "[LandingPageCacheThread][restoreBundle] Can\'t parse to intent"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 629
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #obj:Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private restoreIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .parameter "inString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 591
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 592
    .local v3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 594
    .local v4, index:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 597
    .local v7, pkgName:Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 598
    .local v1, clsName:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .local v2, comName:Landroid/content/ComponentName;
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 601
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->restoreBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 602
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 604
    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 675
    if-nez p1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v1

    .line 677
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 679
    :cond_2
    instance-of v3, p1, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 684
    check-cast v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 685
    .local v0, objCmp:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 687
    goto :goto_0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    .line 519
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mDrawableResSet:[I

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 531
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 487
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, tmp:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, name:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 495
    .end local v0           #name:[Ljava/lang/String;
    .end local v1           #tmp:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 4
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0, p4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 653
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 655
    .local v1, i:I
    if-nez p1, :cond_0

    .line 657
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabName:Ljava/lang/String;

    .line 658
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->restoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIntent:Landroid/content/Intent;

    .line 659
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIndicatorLabelRes:I

    .line 660
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->removeArrayInt(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mDrawableResSet:[I

    .line 661
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPackageName:Ljava/lang/String;

    .line 662
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    .line 663
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginPackageName:Ljava/lang/String;

    .line 664
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginClassName:Ljava/lang/String;

    .line 670
    :cond_0
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->parseIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIndicatorLabelRes:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mDrawableResSet:[I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->capArrayInt([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
