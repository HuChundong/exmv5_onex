.class Lcom/htc/lockscreen/idlescreen/IdleScreenService$1;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;
.source "IdleScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenService;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService$1;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public createEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService$1;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-result-object v0

    return-object v0
.end method
