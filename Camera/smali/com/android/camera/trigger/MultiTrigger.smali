.class public Lcom/android/camera/trigger/MultiTrigger;
.super Lcom/android/camera/trigger/TriggerBase;
.source "MultiTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;,
        Lcom/android/camera/trigger/MultiTrigger$Condition;
    }
.end annotation


# instance fields
.field private m_ChangedCallback:Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;

.field private m_Conditions:[Lcom/android/camera/trigger/MultiTrigger$Condition;

.field private m_IncludedProperties:[Lcom/android/camera/property/Property;


# direct methods
.method public constructor <init>([Lcom/android/camera/trigger/MultiTrigger$Condition;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/trigger/TriggerBase;-><init>()V

    if-nez p1, :cond_0

    const-string v3, "conditions"

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    new-array v3, v3, [Lcom/android/camera/trigger/MultiTrigger$Condition;

    iput-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_Conditions:[Lcom/android/camera/trigger/MultiTrigger$Condition;

    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_Conditions:[Lcom/android/camera/trigger/MultiTrigger$Condition;

    aput-object v0, v3, v1

    iget-object v3, v0, Lcom/android/camera/trigger/MultiTrigger$Condition;->property:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_2
    new-instance v3, Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;

    invoke-direct {v3, p0}, Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;-><init>(Lcom/android/camera/trigger/MultiTrigger;)V

    iput-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_ChangedCallback:Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/camera/property/Property;

    iput-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_IncludedProperties:[Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_IncludedProperties:[Lcom/android/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_IncludedProperties:[Lcom/android/camera/property/Property;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_IncludedProperties:[Lcom/android/camera/property/Property;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/camera/trigger/MultiTrigger;->m_ChangedCallback:Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/trigger/MultiTrigger;->checkActivationState(Lcom/android/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/trigger/MultiTrigger;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/trigger/MultiTrigger;->checkActivationState(Lcom/android/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method private checkActivationState(Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5

    iget-object v4, p0, Lcom/android/camera/trigger/MultiTrigger;->m_Conditions:[Lcom/android/camera/trigger/MultiTrigger$Condition;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/camera/trigger/MultiTrigger;->m_Conditions:[Lcom/android/camera/trigger/MultiTrigger$Condition;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v4, p0, Lcom/android/camera/trigger/MultiTrigger;->m_Conditions:[Lcom/android/camera/trigger/MultiTrigger$Condition;

    aget-object v0, v4, v1

    iget-object v4, v0, Lcom/android/camera/trigger/MultiTrigger$Condition;->property:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v0, Lcom/android/camera/trigger/MultiTrigger$Condition;->value:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/trigger/MultiTrigger;->deactivate()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/trigger/MultiTrigger;->activate()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/trigger/MultiTrigger;->m_ChangedCallback:Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/trigger/MultiTrigger;->m_IncludedProperties:[Lcom/android/camera/property/Property;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/trigger/MultiTrigger;->m_IncludedProperties:[Lcom/android/camera/property/Property;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/trigger/MultiTrigger;->m_ChangedCallback:Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_ChangedCallback:Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;

    iput-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_IncludedProperties:[Lcom/android/camera/property/Property;

    iput-object v3, p0, Lcom/android/camera/trigger/MultiTrigger;->m_Conditions:[Lcom/android/camera/trigger/MultiTrigger$Condition;

    :cond_1
    invoke-super {p0}, Lcom/android/camera/trigger/TriggerBase;->destroy()V

    return-void
.end method
