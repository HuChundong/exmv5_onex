.class public Lcom/android/camera/property/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/property/Property$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAG_NOT_NULL:I = 0x2

.field public static final FLAG_READONLY:I = 0x1

.field public static final FLAG_THREAD_INDEPENDENT:I = 0x4

.field public static final LOG_BINDING:I = 0x1

.field public static final LOG_CALLBACK:I = 0x2

.field public static final LOG_VALUE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Property"

.field private static m_DefaultLogFlags:I

.field private static final m_PropertyMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/property/Property",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static printBindingLogs:Z

.field private static printCallbackLogs:Z

.field private static printValueChangedLogs:Z


# instance fields
.field public final flags:I

.field private m_BindingSource:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private m_BindingTargets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_ChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;>;"
        }
    .end annotation
.end field

.field private final m_CreationThread:Ljava/lang/Thread;

.field private m_IsDestroyed:Z

.field private m_LogFlags:I

.field private final m_OwnerKey:Ljava/lang/Object;

.field private m_Value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/property/Property;->printBindingLogs:Z

    sput-boolean v1, Lcom/android/camera/property/Property;->printCallbackLogs:Z

    sput-boolean v1, Lcom/android/camera/property/Property;->printValueChangedLogs:Z

    sget-boolean v0, Lcom/android/camera/property/Property;->printBindingLogs:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    :cond_0
    sget-boolean v0, Lcom/android/camera/property/Property;->printCallbackLogs:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    :cond_1
    sget-boolean v0, Lcom/android/camera/property/Property;->printValueChangedLogs:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    if-nez p1, :cond_0

    const-string v0, "template"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    iget v0, p1, Lcom/android/camera/property/Property;->flags:I

    iput v0, p0, Lcom/android/camera/property/Property;->flags:I

    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/camera/property/Property;->addToPropertyMap()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    if-nez p2, :cond_0

    const-string v0, "name"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    const-string v0, "ownerKey"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    if-nez p5, :cond_2

    const-string v0, "Property"

    const-string v1, "FLAG_NOT_NULL flag is set, but initial value is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    :cond_3
    iput-object p2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_4

    :goto_0
    iput-object p1, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/camera/property/Property;->addToPropertyMap()V

    return-void

    :cond_4
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private addBinding(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/property/Property;->addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/property/Property;->addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot add changed call-back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] add call-back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToPropertyMap()V
    .locals 4

    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/PropertyBindingMode;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot create binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/property/Property$1;->$SwitchMap$com$android$camera$property$PropertyBindingMode:[I

    invoke-virtual {p4}, Lcom/android/camera/property/PropertyBindingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <----- ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p1, p0}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    invoke-direct {p1, p0}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bindToSource(Lcom/android/camera/property/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bindToSourceInternal(Lcom/android/camera/property/Property;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    iget-object v2, v2, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] --/--> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    invoke-direct {v0, p0}, Lcom/android/camera/property/Property;->removeBinding(Lcom/android/camera/property/Property;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/property/Property;->addBinding(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    :cond_2
    return-void
.end method

.method private clearBindingsInternal()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/property/Property;

    invoke-direct {v1, v3}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    return-void
.end method

.method public static create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/property/Property;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/property/Property;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyInteger(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyInteger(Ljava/lang/String;Ljava/lang/Object;I)Lcom/android/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method private destroy()V
    .locals 1

    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/property/Property;->destroyInternal()V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/property/Property;->destroyInternal()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static destroy(Ljava/lang/Object;Lcom/android/camera/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v1, "property"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p1, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    if-eq v1, p0, :cond_1

    const-string v1, "Property"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid owner key to destroy property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-direct {p1}, Lcom/android/camera/property/Property;->destroy()V

    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static destroyAllProperties(Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    const-string v2, "ownerKey"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    sget-object v3, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/property/Property;

    invoke-direct {v2}, Lcom/android/camera/property/Property;->destroy()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private destroyInternal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    return-void
.end method

.method public static printStatusLogs()V
    .locals 7

    sget-object v5, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_0
    const-string v3, "Property"

    const-string v4, "***** Property Status *****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property owners : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Properties      : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "***************************"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private removeBinding(Lcom/android/camera/property/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeBindingInternal(Lcom/android/camera/property/Property;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeBindingInternal(Lcom/android/camera/property/Property;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeBindingInternal(Lcom/android/camera/property/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    :cond_0
    return-void
.end method

.method private removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/property/PropertyChangedCallback;

    if-ne v0, p1, :cond_3

    iget v2, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string v2, "Property"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] remove call-back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    :cond_5
    throw v2
.end method

.method private setValueInternal(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-nez v6, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_3
    iput-object p1, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    iget v7, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_4

    const-string v7, "Property"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    new-instance v2, Lcom/android/camera/property/PropertyChangedEventArgs;

    invoke-direct {v2, p0, v6, p1}, Lcom/android/camera/property/PropertyChangedEventArgs;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_6

    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/property/PropertyChangedCallback;

    iget v7, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    const-string v7, "Property"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] call-back to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v0, p0, v2}, Lcom/android/camera/property/PropertyChangedCallback;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/property/Property;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private threadAccessCheck()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V

    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/property/PropertyBindingMode;->OneWay:Lcom/android/camera/property/PropertyBindingMode;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    return-void
.end method

.method public final bind(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/PropertyBindingMode;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    const-string v0, "Property"

    const-string v1, "Cannot bind property to self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p1}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/property/Property;->bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    :goto_0
    return-void

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/property/Property;->bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final checkOwnerKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final clearBindings()V
    .locals 1

    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final disableLogs(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    return-void
.end method

.method public final enableLogs(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasChangedCallbacks()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNull()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValueEquals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTValue;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    const-string v0, "Property"

    const-string v1, "Invalid owner key to set value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const-string v0, "Property"

    const-string v1, "Value cannot be NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    invoke-direct {p0, p2}, Lcom/android/camera/property/Property;->setValueInternal(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/property/Property;->setValueInternal(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
