.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.super Ljava/lang/Object;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;,
        Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field private static final DEBUG_VERBOSE_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcKeyEventHandler"


# instance fields
.field private mBaseKeyActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedToReturnBeforeDispatching:Z

.field private mNeedToReturnBeforeQueueing:Z

.field private mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->DEBUG_ON:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-direct {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    .line 28
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeQueueing:Z

    .line 29
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeDispatching:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mBaseKeyActionList:Ljava/util/ArrayList;

    .line 34
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    .line 37
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 38
    .local v0, homeKeyGoogleSearch:Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 39
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V

    .line 40
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    return-object v0
.end method


# virtual methods
.method public handleBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 10
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, delayTime:I
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeDispatching:Z

    .line 107
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 127
    .end local v1           #delayTime:I
    .local v2, delayTime:I
    :goto_0
    return v2

    .line 112
    .end local v2           #delayTime:I
    .restart local v1       #delayTime:I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 113
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;

    .line 114
    .local v0, b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->doBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v1

    .line 115
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->isActionDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->needToBreak()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeDispatching:Z

    .line 117
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 118
    const-string v4, "HtcKeyEventHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBeforeDispatching, Satisfied action class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", event code= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", keyStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->getKeyStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_2
    monitor-exit v5

    move v2, v1

    .end local v1           #delayTime:I
    .restart local v2       #delayTime:I
    goto/16 :goto_0

    .line 126
    .end local v0           #b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    .end local v2           #delayTime:I
    .restart local v1       #delayTime:I
    :cond_3
    monitor-exit v5

    move v2, v1

    .line 127
    .end local v1           #delayTime:I
    .restart local v2       #delayTime:I
    goto/16 :goto_0

    .line 126
    .end local v2           #delayTime:I
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v1       #delayTime:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public handleBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 9
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 75
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeQueueing:Z

    .line 77
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, p2

    .line 96
    .end local p2
    .local v2, policyFlags:I
    :goto_0
    return v2

    .line 81
    .end local v2           #policyFlags:I
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;

    .line 83
    .local v0, b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->doBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result p2

    .line 84
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->isActionDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->needToBreak()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeQueueing:Z

    .line 86
    sget-boolean v3, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "HtcKeyEventHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBeforeQueueing, Satisfied action class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event code= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keyStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->getKeyStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    monitor-exit v4

    move v2, p2

    .end local p2
    .restart local v2       #policyFlags:I
    goto/16 :goto_0

    .line 95
    .end local v0           #b:Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
    .end local v2           #policyFlags:I
    .restart local p2
    :cond_3
    monitor-exit v4

    move v2, p2

    .line 96
    .end local p2
    .restart local v2       #policyFlags:I
    goto/16 :goto_0

    .line 95
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #policyFlags:I
    .restart local p2
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public needToReturnBeforeDispatching()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeDispatching:Z

    return v0
.end method

.method public needToReturnBeforeQueueing()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mNeedToReturnBeforeQueueing:Z

    return v0
.end method

.method public registerKeyAction(ILcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;)V
    .locals 3
    .parameter "keyCode"
    .parameter "b"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mKeyActionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
