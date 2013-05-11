.class public Lcom/kikin/analytics/AnalyticsTracker;
.super Ljava/lang/Object;
.source "AnalyticsTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsTracker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;)V
    .locals 1
    .parameter "context"
    .parameter "event"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kikin/analytics/AnalyticsTracker;->logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;Ljava/util/HashMap;)V

    .line 23
    return-void
.end method

.method public static logEvent(Landroid/content/Context;Lcom/kikin/analytics/AnalyticsTrackerEvent;Ljava/util/HashMap;)V
    .locals 8
    .parameter "context"
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kikin/analytics/AnalyticsTrackerEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 34
    .local v3, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 42
    .end local v5           #packageName:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.kikin.analytics.KikinAnalyticsService"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "tracker_event"

    invoke-virtual {p1}, Lcom/kikin/analytics/AnalyticsTrackerEvent;->ordinal()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string v6, "package_info"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 55
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "AnalyticsTracker"

    const-string v7, "failed to log event [analytics service]"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 37
    :catch_1
    move-exception v0

    .line 38
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "AnalyticsTracker"

    const-string v7, "failed to log event [package name]"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_0
    :try_start_2
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
