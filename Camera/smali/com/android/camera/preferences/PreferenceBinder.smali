.class public abstract Lcom/android/camera/preferences/PreferenceBinder;
.super Ljava/lang/Object;
.source "PreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceBinder"


# instance fields
.field public final defaultPreferenceValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final defaultPropertyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field private m_IsBinding:Z

.field private m_IsSynchronizing:Z

.field private final m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_PropertyOwnerKey:Ljava/lang/Object;

.field public final preferenceName:Ljava/lang/String;

.field public final property:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field public final settingsOwner:Lcom/android/camera/ISettingsOwner;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    new-instance v0, Lcom/android/camera/preferences/PreferenceBinder$1;

    invoke-direct {v0, p0}, Lcom/android/camera/preferences/PreferenceBinder$1;-><init>(Lcom/android/camera/preferences/PreferenceBinder;)V

    iput-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    new-instance v0, Lcom/android/camera/preferences/PreferenceBinder$2;

    invoke-direct {v0, p0}, Lcom/android/camera/preferences/PreferenceBinder$2;-><init>(Lcom/android/camera/preferences/PreferenceBinder;)V

    iput-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    if-nez p1, :cond_0

    const-string v0, "settingsOwner"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "preferenceName"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    const-string v0, "property"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    iput-object p2, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iput-object p5, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-interface {p1}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/Settings;->preferenceChangedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/preferences/PreferenceBinder;->updateFromPreference()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/preferences/PreferenceBinder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/preferences/PreferenceBinder;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/preferences/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V

    return-void
.end method

.method private flushToPreference(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/PreferenceBinder;->setPreferenceValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PreferenceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushToPreference() - Error updating preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateFromPreference(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final flushToPreference()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/preferences/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    goto :goto_0
.end method

.method protected abstract getPreferenceValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation
.end method

.method public resetToDefaultValue()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/PreferenceBinder;->setPreferenceValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected setPreferenceValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final unbind()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/Settings;->preferenceChangedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    goto :goto_0
.end method

.method public final updateFromPreference()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/preferences/PreferenceBinder;->getPreferenceValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/preferences/PreferenceBinder;->updateFromPreference(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PreferenceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFromPreference() - Error retrieving preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', use default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/camera/preferences/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/camera/preferences/PreferenceBinder;->updateFromPreference(Ljava/lang/Object;)V

    goto :goto_1
.end method
