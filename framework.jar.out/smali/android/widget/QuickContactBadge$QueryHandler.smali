.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 327
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 328
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 329
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .local v5, lookupUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, createUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, trigger:Z
    packed-switch p1, :pswitch_data_0

    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v7, v5}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v7}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v7, v6, v5, v2}, Landroid/widget/QuickContactBadge$Injector;->showQuickContactForStranger(Landroid/widget/QuickContactBadge;ZLandroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v7}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v9, 0x3

    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v10, v10, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v7, v8, v5, v9, v10}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 394
    :cond_2
    :goto_1
    return-void

    .line 340
    .restart local p2
    :pswitch_0
    const/4 v6, 0x1

    .line 341
    :try_start_0
    const-string/jumbo v7, "tel"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 345
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 347
    .local v0, contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 349
    goto :goto_0

    .line 354
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    const/4 v6, 0x1

    .line 355
    const-string/jumbo v7, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 359
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 360
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 361
    .restart local v0       #contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 362
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 368
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v7

    if-eqz p3, :cond_3

    .line 369
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_3
    throw v7

    .line 380
    :cond_4
    if-eqz v2, :cond_2

    .line 383
    sget-object v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v8, "1.5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v8, "1.6"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 386
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v7}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 390
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #getter for: Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;
    invoke-static {v8}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #getter for: Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;
    invoke-static {v9}, Landroid/widget/QuickContactBadge;->access$300(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/widget/QuickContactBadge;->trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v5, v8, v9}, Landroid/widget/QuickContactBadge;->access$400(Landroid/widget/QuickContactBadge;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
