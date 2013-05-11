.class Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/calendar/DeleteEventHelper;


# direct methods
.method public constructor <init>(Lcom/htc/util/calendar/DeleteEventHelper;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;->this$0:Lcom/htc/util/calendar/DeleteEventHelper;

    .line 711
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 712
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    .line 716
    if-nez p3, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    if-eqz p2, :cond_0

    move-object v10, p2

    .line 724
    check-cast v10, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;

    .line 725
    .local v10, ei:Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 726
    const-string v0, "DeleteEventHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete - cursor is empty, so skip it. eventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v10, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->mEventId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 730
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 731
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;->this$0:Lcom/htc/util/calendar/DeleteEventHelper;

    iget-wide v1, v10, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->mBegin:J

    iget-wide v3, v10, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->mEnd:J

    iget v6, v10, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->mWhich:I

    move-object v5, p3

    move v8, v7

    move v9, v7

    invoke-virtual/range {v0 .. v9}, Lcom/htc/util/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;IZZZ)V

    goto :goto_0
.end method
