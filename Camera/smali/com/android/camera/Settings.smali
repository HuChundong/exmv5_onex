.class public Lcom/android/camera/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final VERSION:I = 0x133055d

.field private static final m_UpgradeWorkers:[Lcom/android/camera/preferences/PreferenceUpgradeWorker;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final m_SharedPreferences:Landroid/content/SharedPreferences;

.field public final preferenceChangedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/preferences/PreferenceUpgradeWorker;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;

    invoke-direct {v2}, Lcom/android/camera/preferences/Sense40PlusPreferenceUpgradeWorker;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/preferences/Sense40Plus2PreferenceUpgradeWorker;

    invoke-direct {v2}, Lcom/android/camera/preferences/Sense40Plus2PreferenceUpgradeWorker;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/Settings;->m_UpgradeWorkers:[Lcom/android/camera/preferences/PreferenceUpgradeWorker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Settings$1;-><init>(Lcom/android/camera/Settings;)V

    iput-object v0, p0, Lcom/android/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "Settings.PreferenceChanged"

    invoke-static {p0, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Settings;->preferenceChangedEvent:Lcom/android/camera/event/Event;

    invoke-direct {p0, p1}, Lcom/android/camera/Settings;->upgrade(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p3, Ljava/lang/Float;

    if-eqz v1, :cond_3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    instance-of v1, p3, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private upgrade(Landroid/content/Context;)V
    .locals 10

    const v9, 0x133055d

    const-string v6, "version"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    const-string v7, "upgrade() - Current version is the latest"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string v6, "version"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upgrade() - Upgrade from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v6, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    sget-object v6, Lcom/android/camera/Settings;->m_UpgradeWorkers:[Lcom/android/camera/preferences/PreferenceUpgradeWorker;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    sget-object v6, Lcom/android/camera/Settings;->m_UpgradeWorkers:[Lcom/android/camera/preferences/PreferenceUpgradeWorker;

    aget-object v5, v6, v3

    iget v6, v5, Lcom/android/camera/preferences/PreferenceUpgradeWorker;->sourceVersion:I

    if-ne v6, v0, :cond_3

    invoke-virtual {v5, p1, v4, v1}, Lcom/android/camera/preferences/PreferenceUpgradeWorker;->upgradePreferences(Landroid/content/Context;Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V

    iget v0, v5, Lcom/android/camera/preferences/PreferenceUpgradeWorker;->targetVersion:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v9, :cond_5

    iget-object v6, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upgrade() - Cannot upgrade to latest version, current version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v6, "version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    const-string v7, "upgrade() - Fail to upgrade preferences"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean() - Wrong type in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean() - Exception occurred while getting value of preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloat() - Wrong type in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloat() - Exception occurred while getting value of preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt() - Wrong type in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt() - Exception occurred while getting value of preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString() - Wrong type in preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString() - Exception occurred while getting value of preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/camera/Settings;->m_PreferenceChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    return-void
.end method

.method public final remove([Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    array-length v4, p1

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while removing preferences"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while removing preference \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final set([Ljava/util/AbstractMap$SimpleEntry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    array-length v4, p1

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/camera/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to update preference ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    const-string v5, "Exception occurred while updating preferences"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/Settings;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/Settings;->set(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/camera/Settings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while updating preference \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
