.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 5493
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 5677
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5493
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 7
    .parameter "a"
    .parameter "type"

    .prologue
    .line 5533
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #calls: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1600(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    .line 5534
    .local v3, systemApp:Z
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5541
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5542
    .local v0, NI:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5543
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 5544
    .local v1, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5545
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 5546
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with priority > 0, forcing to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5553
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5554
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> For Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 5542
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5558
    .end local v1           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .locals 5
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5582
    .local p2, dest:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 5583
    .local v1, filterAi:Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 5584
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5585
    .local v0, destAi:Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 5587
    const/4 v3, 0x0

    .line 5590
    .end local v0           #destAi:Landroid/content/pm/ActivityInfo;
    :goto_1
    return v3

    .line 5583
    .restart local v0       #destAi:Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5590
    .end local v0           #destAi:Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5493
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 1
    .parameter "out"
    .parameter "prefix"
    .parameter "filter"

    .prologue
    .line 5656
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5658
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 5659
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Activity;->getComponentShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5660
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5661
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5662
    return-void
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5493
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .locals 5
    .parameter "filter"
    .parameter "userId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5595
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManager;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/UserManager;->exists(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5606
    :cond_0
    :goto_0
    return v2

    .line 5596
    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v4, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 5597
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_3

    .line 5598
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5599
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_3

    .line 5603
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_3
    move v2, v3

    .line 5606
    goto :goto_0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 7
    .parameter "info"
    .parameter "match"
    .parameter "userId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 5617
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManager;

    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManager;->exists(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5645
    :cond_0
    :goto_0
    return-object v2

    .line 5618
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5621
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 5622
    .local v0, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 5626
    :cond_2
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 5627
    .local v2, res:Landroid/content/pm/ResolveInfo;
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5628
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    if-eqz v1, :cond_5

    invoke-virtual {v1, p3}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p3}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v3

    :cond_3
    invoke-static {v0, v5, v4, v3, p3}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;IZII)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5632
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4

    .line 5633
    iput-object p1, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 5635
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v3

    iput v3, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 5636
    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v3, v3, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v3, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 5639
    iput p2, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 5640
    iget-boolean v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean v3, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 5641
    iget v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput v3, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 5642
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 5643
    iget v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v3, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 5644
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #calls: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1600(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    goto :goto_0

    :cond_5
    move v4, v3

    .line 5628
    goto :goto_1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5493
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5493
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->packageForFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 5611
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5504
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManager;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManager;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5506
    :goto_0
    return-object v0

    .line 5505
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 5506
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5497
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManager;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManager;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5499
    :goto_0
    return-object v0

    .line 5498
    :cond_0
    if-eqz p3, :cond_1

    const/high16 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 5499
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5498
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, packageActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    const/4 v0, 0x0

    .line 5512
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManager;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/UserManager;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5529
    :cond_0
    :goto_0
    return-object v0

    .line 5513
    :cond_1
    if-eqz p4, :cond_0

    .line 5516
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 5517
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 5518
    .local v3, defaultOnly:Z
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5519
    .local v6, N:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 5523
    .local v4, listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 5524
    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 5525
    .local v8, intentFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5526
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5523
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5517
    .end local v3           #defaultOnly:Z
    .end local v4           #listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    .end local v6           #N:I
    .end local v7           #i:I
    .end local v8           #intentFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3       #defaultOnly:Z
    .restart local v4       #listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    .restart local v6       #N:I
    .restart local v7       #i:I
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 5529
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 5
    .parameter "a"
    .parameter "type"

    .prologue
    .line 5561
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5568
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5569
    .local v0, NI:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5570
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 5575
    .local v1, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 5569
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5577
    .end local v1           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5650
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1700()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5651
    return-void
.end method
