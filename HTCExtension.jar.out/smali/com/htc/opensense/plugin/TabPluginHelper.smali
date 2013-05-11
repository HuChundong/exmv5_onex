.class public Lcom/htc/opensense/plugin/TabPluginHelper;
.super Ljava/lang/Object;
.source "TabPluginHelper.java"

# interfaces
.implements Lcom/htc/opensense/plugin/PluginConstants;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_TAB_TAG:Ljava/lang/String; = "PluginTabTag"

.field private static final LOG_TAG:Ljava/lang/String; = "TabPluginHelper"

.field private static final NONAME:Ljava/lang/String; = "noname"

.field private static sSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/plugin/TabPluginHelper;->sSenseVersion:F

    .line 48
    :try_start_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/htc/opensense/plugin/TabPluginHelper;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/CarouselHost;Landroid/os/Bundle;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "tabHost"
    .parameter "extras"
    .parameter
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/CarouselHost;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p3, tags:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {p0, p4}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 290
    .local v10, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    return-object v10

    .line 293
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/TabPlugin;>;"
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/plugin/TabPlugin;

    .line 295
    .local v9, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v7

    .line 307
    .local v7, intent:Landroid/content/Intent;
    if-eqz p2, :cond_5

    .line 308
    invoke-virtual {v7, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 310
    :cond_5
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v6, 0x2

    aget v6, v0, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/CarouselHost;Landroid/os/Bundle;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "tabHost"
    .parameter "extras"
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/CarouselHost;",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {p0, p3}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 246
    .local v10, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    return-object v10

    .line 250
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/TabPlugin;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/plugin/TabPlugin;

    .line 252
    .local v9, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v7

    .line 262
    .local v7, intent:Landroid/content/Intent;
    if-eqz p2, :cond_4

    .line 263
    invoke-virtual {v7, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    :cond_4
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v6, 0x2

    aget v6, v0, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/CarouselHost;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .parameter "tabHost"
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/CarouselHost;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/TabPluginHelper;->addPluginTabs(Landroid/content/Context;Lcom/htc/widget/CarouselHost;Landroid/os/Bundle;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/TabSwitchHost;Landroid/os/Bundle;[Ljava/lang/String;)Ljava/util/List;
    .locals 32
    .parameter "context"
    .parameter "tabHost"
    .parameter "extras"
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/TabSwitchHost;",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v25, Ljava/util/LinkedList;

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedList;-><init>()V

    .line 377
    .local v25, pluginTags:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object/from16 v6, p3

    .local v6, arr$:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    move/from16 v18, v16

    .end local v6           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v19           #len$:I
    .local v18, i$:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    aget-object v15, v6, v18

    .line 378
    .local v15, feature:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v11

    .line 380
    .local v11, components:[Landroid/content/ComponentName;
    move-object v7, v11

    .local v7, arr$:[Landroid/content/ComponentName;
    array-length v0, v7

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v16, 0x0

    .end local v18           #i$:I
    .restart local v16       #i$:I
    move/from16 v17, v16

    .end local v7           #arr$:[Landroid/content/ComponentName;
    .end local v16           #i$:I
    .end local v20           #len$:I
    .local v17, i$:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v9, v7, v17

    .line 382
    .local v9, c:Landroid/content/ComponentName;
    :try_start_0
    new-instance v24, Lcom/htc/opensense/plugin/TabPluginWrapper;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/htc/opensense/plugin/TabPluginWrapper;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 384
    .local v24, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 385
    .local v5, activityIntent:Landroid/content/Intent;
    if-eqz v5, :cond_0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v29

    if-nez v29, :cond_1

    .line 387
    :cond_0
    const-string v29, "TabPluginHelper"

    const-string v30, "Invalid TAB plugin : No activity intent or drawable set"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v5           #activityIntent:Landroid/content/Intent;
    .end local v17           #i$:I
    .end local v24           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :goto_2
    add-int/lit8 v16, v17, 0x1

    .restart local v16       #i$:I
    move/from16 v17, v16

    .end local v16           #i$:I
    .restart local v17       #i$:I
    goto :goto_1

    .line 392
    .restart local v5       #activityIntent:Landroid/content/Intent;
    .restart local v24       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_1
    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v22

    .line 393
    .local v22, name:Ljava/lang/String;
    if-nez v22, :cond_2

    .line 394
    const-string v22, "noname"

    .line 397
    :cond_2
    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 398
    .local v13, drawableSet:[Landroid/graphics/drawable/Drawable;
    array-length v0, v13

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 399
    const-string v29, "TabPluginHelper"

    const-string v30, "Invalid TAB plugin : Must specify at least 3 drawables"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 438
    .end local v5           #activityIntent:Landroid/content/Intent;
    .end local v13           #drawableSet:[Landroid/graphics/drawable/Drawable;
    .end local v17           #i$:I
    .end local v22           #name:Ljava/lang/String;
    .end local v24           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :catch_0
    move-exception v14

    .line 439
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v29, "TabPluginHelper"

    const-string v30, "Error adding tab plugin"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 403
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #activityIntent:Landroid/content/Intent;
    .restart local v13       #drawableSet:[Landroid/graphics/drawable/Drawable;
    .restart local v17       #i$:I
    .restart local v22       #name:Ljava/lang/String;
    .restart local v24       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_3
    const/4 v10, 0x1

    .line 404
    .local v10, checkCnt:Z
    move-object v8, v13

    .local v8, arr$:[Landroid/graphics/drawable/Drawable;
    :try_start_1
    array-length v0, v8

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v16, 0x0

    .end local v17           #i$:I
    .restart local v16       #i$:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v12, v8, v16

    .line 405
    .local v12, d:Landroid/graphics/drawable/Drawable;
    if-nez v12, :cond_5

    .line 406
    const/4 v10, 0x0

    .line 411
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    :cond_4
    if-nez v10, :cond_6

    .line 412
    const-string v29, "TabPluginHelper"

    const-string v30, "Invalid TAB plugin : Must specify at least 3 drawables at index 0~2"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 440
    .end local v5           #activityIntent:Landroid/content/Intent;
    .end local v8           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v10           #checkCnt:Z
    .end local v13           #drawableSet:[Landroid/graphics/drawable/Drawable;
    .end local v16           #i$:I
    .end local v21           #len$:I
    .end local v22           #name:Ljava/lang/String;
    .end local v24           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :catch_1
    move-exception v14

    .line 441
    .local v14, e:Ljava/lang/SecurityException;
    const-string v29, "TabPluginHelper"

    const-string v30, "Error adding tab plugin"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 404
    .end local v14           #e:Ljava/lang/SecurityException;
    .restart local v5       #activityIntent:Landroid/content/Intent;
    .restart local v8       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v10       #checkCnt:Z
    .restart local v12       #d:Landroid/graphics/drawable/Drawable;
    .restart local v13       #drawableSet:[Landroid/graphics/drawable/Drawable;
    .restart local v16       #i$:I
    .restart local v21       #len$:I
    .restart local v22       #name:Ljava/lang/String;
    .restart local v24       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 418
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v28, v22

    .line 419
    .local v28, tag:Ljava/lang/String;
    const/16 v23, 0x0

    .line 420
    .local v23, ncnt:I
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 421
    .local v27, t:Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 422
    add-int/lit8 v23, v23, 0x1

    .line 423
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_4

    .line 427
    .end local v27           #t:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v26

    .line 428
    .local v26, spec:Lcom/htc/widget/TabSwitchHost$TabSpec;
    const-string v29, "TAB_TAG"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 430
    const/16 v29, 0x0

    aget-object v29, v13, v29

    const/16 v30, 0x1

    aget-object v30, v13, v30

    const/16 v31, 0x2

    aget-object v31, v13, v31

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    .line 436
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 437
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 442
    .end local v5           #activityIntent:Landroid/content/Intent;
    .end local v8           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v10           #checkCnt:Z
    .end local v13           #drawableSet:[Landroid/graphics/drawable/Drawable;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #len$:I
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #ncnt:I
    .end local v24           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .end local v26           #spec:Lcom/htc/widget/TabSwitchHost$TabSpec;
    .end local v28           #tag:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 443
    .local v14, e:Ljava/lang/ClassNotFoundException;
    const-string v29, "TabPluginHelper"

    const-string v30, "Error adding tab plugin"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 377
    .end local v9           #c:Landroid/content/ComponentName;
    .end local v14           #e:Ljava/lang/ClassNotFoundException;
    .restart local v17       #i$:I
    :cond_9
    add-int/lit8 v16, v18, 0x1

    .end local v17           #i$:I
    .local v16, i$:I
    move/from16 v18, v16

    .end local v16           #i$:I
    .restart local v18       #i$:I
    goto/16 :goto_0

    .line 448
    .end local v11           #components:[Landroid/content/ComponentName;
    .end local v15           #feature:Ljava/lang/String;
    :cond_a
    return-object v25
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/TabSwitchHost;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "tabHost"
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/TabSwitchHost;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {p0, p2}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 334
    .local v2, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 362
    :cond_0
    return-object v2

    .line 338
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/TabPlugin;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    .line 340
    .local v1, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 349
    :cond_3
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v3

    .line 359
    .local v3, tab:Lcom/htc/widget/TabSwitchHost$TabSpec;
    invoke-virtual {p1, v3}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    goto :goto_0
.end method

.method public static final getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^([A-Za-z\\.]+)-([A-Za-z\\.]+)$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "-"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, name:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v4, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Landroid/content/ComponentName;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0           #name:[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRemovedTabTags(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 19
    .parameter "context"
    .parameter "tags"

    .prologue
    .line 93
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v13, inputNames:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez p1, :cond_1

    .line 96
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 178
    :cond_0
    return-object v17

    .line 99
    :cond_1
    move-object/from16 v7, p1

    .local v7, arr$:[Ljava/lang/String;
    array-length v14, v7

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_3

    aget-object v18, v7, v12

    .line 100
    .local v18, tag:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense/plugin/TabPluginHelper;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    .line 101
    .local v15, name:Landroid/content/ComponentName;
    if-nez v15, :cond_2

    .line 99
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    .end local v15           #name:Landroid/content/ComponentName;
    .end local v18           #tag:Ljava/lang/String;
    :cond_3
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 109
    .local v16, outputNames:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT A1."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", A2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "plugin_class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "plugin_pkg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " A1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "plugin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " A2 WHERE A1."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=A2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "package_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 123
    .local v8, builder:Ljava/lang/StringBuilder;
    sget v2, Lcom/htc/opensense/plugin/TabPluginHelper;->sSenseVersion:F

    const/high16 v3, 0x4000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 124
    const-string v2, " AND A2."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_4
    const-string v2, " AND A2."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "plugin_class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .local v11, i:I
    :goto_2
    if-ltz v11, :cond_6

    .line 133
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 134
    .restart local v15       #name:Landroid/content/ComponentName;
    const-string v2, "\'"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    if-lez v11, :cond_5

    .line 138
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 141
    .end local v15           #name:Landroid/content/ComponentName;
    :cond_6
    const-string v2, ")"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, "TabPluginHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemovedTabTags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, client:Landroid/content/ContentProviderClient;
    const/4 v9, 0x0

    .line 147
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_9

    .line 149
    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 153
    :goto_3
    if-eqz v9, :cond_b

    .line 154
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 155
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "package"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "plugin_class"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 160
    :catch_0
    move-exception v10

    .line 161
    .local v10, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "TabPluginHelper"

    const-string v3, "Failed to get query results!"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    if-eqz v9, :cond_7

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_7
    if-eqz v1, :cond_8

    .line 169
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 173
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :cond_8
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 174
    .local v17, outputTags:[Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    :goto_6
    if-ltz v11, :cond_0

    .line 175
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 176
    .restart local v15       #name:Landroid/content/ComponentName;
    invoke-static {v15}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabTag(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v17, v11

    .line 174
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 151
    .end local v15           #name:Landroid/content/ComponentName;
    .end local v17           #outputTags:[Ljava/lang/String;
    :cond_9
    :try_start_2
    const-string v2, "TabPluginHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 162
    :catch_1
    move-exception v10

    .line 163
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "TabPluginHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemovedTabTags() error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    if-eqz v9, :cond_a

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_a
    if-eqz v1, :cond_8

    .line 169
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_5

    .line 165
    .end local v10           #e:Ljava/lang/Exception;
    :cond_b
    if-eqz v9, :cond_c

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_c
    if-eqz v1, :cond_8

    .line 169
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_5

    .line 165
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_d

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_d
    if-eqz v1, :cond_e

    .line 169
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_e
    throw v2
.end method

.method public static varargs getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v11, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    if-eqz p0, :cond_5

    .line 191
    move-object/from16 v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v3, v0, v5

    .line 192
    .local v3, feature:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v9

    .line 194
    .local v9, names:[Landroid/content/ComponentName;
    move-object v1, v9

    .local v1, arr$:[Landroid/content/ComponentName;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v8, v1, v4

    .line 196
    .local v8, name:Landroid/content/ComponentName;
    :try_start_0
    new-instance v10, Lcom/htc/opensense/plugin/TabPluginWrapper;

    invoke-direct {v10, p0, v8}, Lcom/htc/opensense/plugin/TabPluginWrapper;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 199
    .local v10, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_1

    :cond_0
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_2

    :cond_1
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 202
    :cond_2
    const-string v12, "TabPluginHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TabPlugin is not fully implemented: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 207
    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_3
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "PluginTabTag"

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 210
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :catch_0
    move-exception v2

    .line 211
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "TabPluginHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to instantiate TabPlugin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 191
    .end local v2           #e:Ljava/lang/Exception;
    .end local v8           #name:Landroid/content/ComponentName;
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto/16 :goto_0

    .line 217
    .end local v1           #arr$:[Landroid/content/ComponentName;
    .end local v3           #feature:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #names:[Landroid/content/ComponentName;
    :cond_5
    return-object v11
.end method

.method public static final getTabTag(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
