// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  static m0(num) => "${Intl.plural(num, zero: '${num} badge', one: '${num} badge', other: '${num} badges')}";

  static m1(num) => "${Intl.plural(num, one: '${num} badge selected', other: '${num} badges selected')}";

  static m2(value) => "We just emailed a confirmation link to ${value}.Click the link to complete your account set up.";

  static m3(value) => "Congratulations! You have earned ${value} CAT.";

  static m4(num) => "${Intl.plural(num, zero: '${num} Badge Issued', one: '${num} Badge Issued', other: '${num} Badges Issued')}";

  static m5(num) => "${Intl.plural(num, zero: '${num} Badge won', one: '${num} Badge won', other: '${num} Badges won')}";

  static m6(email) => "We've sent an email to ${email}. Click the\nlink in the email to reset your password. If you don't see the email, \ncheck other place it might be, like your junk, spam, social, or other folders.";

  static m7(email) => "We just emailed a confirmation link to ${email}.\nClick the link to complete your email set-up.";

  static m8(value) => "${value} Mining activities have occurred";

  static m9(reward, taskDesc) => "Earn ${reward} CAT by\n${taskDesc}";

  static m10(name) => "You won the ${name} badge";

  static m11(name) => "Congratulations,\n${name}";

  static m12(num) => "You are the ${num}th citizen of the CryptoBadge Network";

  static m13(num) => "and become the ${num}th citizen! Your citizenship";

  static m14(value) => "number ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "a_to_z": MessageLookupByLibrary.simpleMessage("A to Z"),
        "about_crypto_badge": MessageLookupByLibrary.simpleMessage("About CryptoBadge"),
        "activity": MessageLookupByLibrary.simpleMessage("ACTIVITY"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "add_a_domain": MessageLookupByLibrary.simpleMessage("Add a domain"),
        "add_badge": MessageLookupByLibrary.simpleMessage("Add Badge"),
        "add_email_address": MessageLookupByLibrary.simpleMessage("Add email address"),
        "add_email_msg": m7,
        "add_new_email_address": MessageLookupByLibrary.simpleMessage("Add new email address"),
        "add_new_mobile_number": MessageLookupByLibrary.simpleMessage("Add mobile number and get country badge"),
        "add_school": MessageLookupByLibrary.simpleMessage("Add school"),
        "add_to": MessageLookupByLibrary.simpleMessage("Add to"),
        "add_to_collection": MessageLookupByLibrary.simpleMessage("Add to Collection"),
        "add_to_new_collection": MessageLookupByLibrary.simpleMessage("Add to new Collection"),
        "add_to_new_collection_sub_title": MessageLookupByLibrary.simpleMessage("Create a new Collection and add this badge."),
        "after_click_continue": MessageLookupByLibrary.simpleMessage("After you confirm click Continue"),
        "alert_msg": m6,
        "already_have_an_account": MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "and_become_the_citizen": m13,
        "badge": MessageLookupByLibrary.simpleMessage("Badge"),
        "badge_holders": MessageLookupByLibrary.simpleMessage("Badges Holders"),
        "badge_lowercase": m0,
        "badge_menu": MessageLookupByLibrary.simpleMessage("Badge menu"),
        "badge_uppercase": MessageLookupByLibrary.simpleMessage("Badges"),
        "badge_view": MessageLookupByLibrary.simpleMessage("Badge view"),
        "badges_issued": m4,
        "badges_issued_no_value": MessageLookupByLibrary.simpleMessage("Badges Issued"),
        "badges_selected": m1,
        "badges_won": m5,
        "badges_won_no_value": MessageLookupByLibrary.simpleMessage("badges won"),
        "bio": MessageLookupByLibrary.simpleMessage("Bio"),
        "by_clicking_this_button_you_argee_to_crypto_badge": MessageLookupByLibrary.simpleMessage("By clicking this button, you argee to\nCrypto Badge"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "certification": MessageLookupByLibrary.simpleMessage("Certification"),
        "change_password": MessageLookupByLibrary.simpleMessage("Change Password"),
        "change_profile_url_message": MessageLookupByLibrary.simpleMessage("When you change your profile URL, existing links to your profile will no longer work. You must update this link on any external sites."),
        "check_your_email": MessageLookupByLibrary.simpleMessage("Check your email"),
        "citizenship_number": MessageLookupByLibrary.simpleMessage("Citizenship Number"),
        "citizenship_number_msg": MessageLookupByLibrary.simpleMessage("Citizenship Number is automatically granted based on the order of registration. Early citizens may win honorary badges such as “The First 9,999 Founding Citizens.”"),
        "claim": MessageLookupByLibrary.simpleMessage("Claim"),
        "claim_badge_success": m11,
        "claim_your_badge": MessageLookupByLibrary.simpleMessage("Claim your badge"),
        "collect_more_badge_and_invite": MessageLookupByLibrary.simpleMessage("Collect more badges and invite your friends!"),
        "collection": MessageLookupByLibrary.simpleMessage("Collection"),
        "collection_name": MessageLookupByLibrary.simpleMessage("Collection Name"),
        "collection_name_hint": MessageLookupByLibrary.simpleMessage("Name your Collection"),
        "collection_name_permission": MessageLookupByLibrary.simpleMessage("Only you can access your Collection"),
        "collection_title_is_required": MessageLookupByLibrary.simpleMessage("Collection title is required"),
        "community": MessageLookupByLibrary.simpleMessage("Community"),
        "confirm_your_email_address": MessageLookupByLibrary.simpleMessage("Confirm your email address"),
        "congratulations": m3,
        "continue": MessageLookupByLibrary.simpleMessage("Continue"),
        "copied_to_clipboard": MessageLookupByLibrary.simpleMessage("Copied to clipboard"),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "create_an_account": MessageLookupByLibrary.simpleMessage("Create an account."),
        "create_collection": MessageLookupByLibrary.simpleMessage("Create Collection"),
        "create_collection_hint": MessageLookupByLibrary.simpleMessage("Write about your collection"),
        "crypto_badge_network": MessageLookupByLibrary.simpleMessage("CryptoBadge Network"),
        "crypto_badge_network_msg":
            MessageLookupByLibrary.simpleMessage("The CryptoBadge Network is a transnational alliance of communities where individuals’ identity is formed through their certifiable skills, achievements and passion. Learn more about our vision."),
        "current_password": MessageLookupByLibrary.simpleMessage("Current Password"),
        "delete_email": MessageLookupByLibrary.simpleMessage("Delete email"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "discovery": MessageLookupByLibrary.simpleMessage("Discovery"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "earn_cat_by": m9,
        "edit_privacy": MessageLookupByLibrary.simpleMessage("Edit Privacy"),
        "edit_profile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "email_address": MessageLookupByLibrary.simpleMessage("Email Address"),
        "email_invalid": MessageLookupByLibrary.simpleMessage("Email invalid"),
        "email_looks_great": MessageLookupByLibrary.simpleMessage("Email looks great :)"),
        "enter_email": MessageLookupByLibrary.simpleMessage("Enter Email"),
        "enter_name": MessageLookupByLibrary.simpleMessage("Enter name"),
        "error_occured_while_loading_your_list": MessageLookupByLibrary.simpleMessage("An error occured while loading your list "),
        "event": MessageLookupByLibrary.simpleMessage("EVENT"),
        "evidence": MessageLookupByLibrary.simpleMessage("Evidence"),
        "expiration": MessageLookupByLibrary.simpleMessage("Expiration"),
        "forgot_your_password": MessageLookupByLibrary.simpleMessage("Forgot your password?"),
        "get_started": MessageLookupByLibrary.simpleMessage("Get Started!"),
        "global_ranking": MessageLookupByLibrary.simpleMessage("Global ranking"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "hot_badges": MessageLookupByLibrary.simpleMessage("HOT BADGES"),
        "how_to_win_badge": MessageLookupByLibrary.simpleMessage("How to win this badge?"),
        "in_progress": MessageLookupByLibrary.simpleMessage("In Progress ..."),
        "issued": MessageLookupByLibrary.simpleMessage("issued"),
        "issued_by": MessageLookupByLibrary.simpleMessage("Issued by"),
        "issued_date": MessageLookupByLibrary.simpleMessage("Issued date"),
        "issued_uppercase": MessageLookupByLibrary.simpleMessage("Issued"),
        "issuer": MessageLookupByLibrary.simpleMessage("Issuer"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "learn_more": MessageLookupByLibrary.simpleMessage("Learn more"),
        "list_activities_empty": MessageLookupByLibrary.simpleMessage("No transactions"),
        "list_view": MessageLookupByLibrary.simpleMessage("List view"),
        "log_out": MessageLookupByLibrary.simpleMessage("Log out"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_to_access": MessageLookupByLibrary.simpleMessage("Login to access your CryptoBadges"),
        "main_server": MessageLookupByLibrary.simpleMessage("Main Server"),
        "mine_more_cat": MessageLookupByLibrary.simpleMessage("Mine more CAT"),
        "mined_by_cbf": MessageLookupByLibrary.simpleMessage("mined by CryptoBadge Citizens and Partners"),
        "mined_total_by": MessageLookupByLibrary.simpleMessage("mined by\nCryptoBadge\nCitizens and Partners"),
        "mining": MessageLookupByLibrary.simpleMessage("Mining"),
        "mining_activities": MessageLookupByLibrary.simpleMessage("Mining activities have occured"),
        "mining_activities_have_occured": m8,
        "mining_activities_headers": MessageLookupByLibrary.simpleMessage("MINING ACTIVITIES"),
        "mining_quest": MessageLookupByLibrary.simpleMessage("Mining Quest"),
        "mobile_numbers": MessageLookupByLibrary.simpleMessage("Mobile numbers"),
        "more_badges": MessageLookupByLibrary.simpleMessage("More\nBadges"),
        "my_account": MessageLookupByLibrary.simpleMessage("My Account"),
        "my_profile": MessageLookupByLibrary.simpleMessage("My Profile"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "name_hint_text": MessageLookupByLibrary.simpleMessage("Enter a short bio"),
        "new_collection": MessageLookupByLibrary.simpleMessage("New collection"),
        "new_password": MessageLookupByLibrary.simpleMessage("New Password"),
        "newest": MessageLookupByLibrary.simpleMessage("Newest"),
        "no_account": MessageLookupByLibrary.simpleMessage("No account?"),
        "no_badge_yet": MessageLookupByLibrary.simpleMessage("No badge yet"),
        "no_domains_for_university": MessageLookupByLibrary.simpleMessage("No domains for this university"),
        "no_result": MessageLookupByLibrary.simpleMessage("No result"),
        "no_university": MessageLookupByLibrary.simpleMessage("There is no university"),
        "notable_badge": MessageLookupByLibrary.simpleMessage("NOTABLE BADGE WINNERS"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "number_value": m14,
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "ok_change_it": MessageLookupByLibrary.simpleMessage("OK, change it"),
        "oldest": MessageLookupByLibrary.simpleMessage("Oldest"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "password_should_be_at_least_6_characters": MessageLookupByLibrary.simpleMessage("Password should be at least 6 characters!"),
        "password_should_be_at_up_to_128_characters": MessageLookupByLibrary.simpleMessage("Password should be upto 128 characters!"),
        "please_check_your_inbox": MessageLookupByLibrary.simpleMessage("Please check your inbox for a confirmation email. Click the link in the email to confirm your email address."),
        "please_double_check_your_email": MessageLookupByLibrary.simpleMessage("Please double-check your email address or password and try again."),
        "please_enter_a_valid_email_address": MessageLookupByLibrary.simpleMessage("Please enter a valid email address"),
        "primary": MessageLookupByLibrary.simpleMessage("Primary"),
        "primary_email": MessageLookupByLibrary.simpleMessage("Primary email"),
        "privacy_policy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "private": MessageLookupByLibrary.simpleMessage("Private"),
        "private_description": MessageLookupByLibrary.simpleMessage("Only you can access your Collection and anyone can't find your Collection. However, you can share the private collection to other services or groups."),
        "profile_url": MessageLookupByLibrary.simpleMessage("Profile URL"),
        "public": MessageLookupByLibrary.simpleMessage("Public"),
        "public_description": MessageLookupByLibrary.simpleMessage("Anyone on the internet can find and access your Collection."),
        "quest": MessageLookupByLibrary.simpleMessage("Quest Mining"),
        "quest_guide": MessageLookupByLibrary.simpleMessage("Before jumping into the advanced mining methods, you can simply start to earn CAT by fulfilling quests to become a fully legitimate Citizen of the CryptoBadge Network."),
        "received": MessageLookupByLibrary.simpleMessage("received"),
        "referral": MessageLookupByLibrary.simpleMessage("Referral"),
        "referral_guide": MessageLookupByLibrary.simpleMessage("If you finished the basic level up steps above, here\'s an advanced mining method by which you can earn A LOT more CAT."),
        "register_domain": MessageLookupByLibrary.simpleMessage("Register domain"),
        "related_badges": MessageLookupByLibrary.simpleMessage("Related Badges"),
        "remember_me": MessageLookupByLibrary.simpleMessage("Remember me"),
        "required": MessageLookupByLibrary.simpleMessage("Required!"),
        "resend_confirmation": MessageLookupByLibrary.simpleMessage("Re-send confirmation email"),
        "resend_verification": MessageLookupByLibrary.simpleMessage("Resend verification"),
        "reset_password": MessageLookupByLibrary.simpleMessage("Reset Password"),
        "reset_password_subtitle": MessageLookupByLibrary.simpleMessage("Enter the email address associated with\nyour account, and we'll email you a link\nto reset your password"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "search_badge": MessageLookupByLibrary.simpleMessage("Search Badge"),
        "search_university": MessageLookupByLibrary.simpleMessage("Search university"),
        "see_all": MessageLookupByLibrary.simpleMessage("See All"),
        "see_my_badge": MessageLookupByLibrary.simpleMessage("See my badge"),
        "send_reset_link": MessageLookupByLibrary.simpleMessage("Send reset link"),
        "send_verification": MessageLookupByLibrary.simpleMessage("Send verification"),
        "server_url": MessageLookupByLibrary.simpleMessage("Server Url"),
        "setting": MessageLookupByLibrary.simpleMessage("Setting"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "sign_up_to_get_your_crypto_badge": MessageLookupByLibrary.simpleMessage("Sign up to get your CryptoBadge"),
        "sort": MessageLookupByLibrary.simpleMessage("Sort"),
        "start_mining": MessageLookupByLibrary.simpleMessage("Start Mining"),
        "sth_went_wrong": MessageLookupByLibrary.simpleMessage("Oops, something went wrong!"),
        "term_of_policy": MessageLookupByLibrary.simpleMessage("Term of Policy"),
        "term_of_service": MessageLookupByLibrary.simpleMessage("Term of Service"),
        "terran_badge": MessageLookupByLibrary.simpleMessage("Terran Badge"),
        "terran_badge_msg": MessageLookupByLibrary.simpleMessage(
            "If you are a human inhabiting the planet earth, you are eligible to win Terran Badge. Terran Badge is the symbol of citizenship of the CryptoBadge Network. Terran Badge holders can collect and own CAT, the main currency of the CryptoBadge Network and will also be granted the right to participate in its governance, such as electing representatives, establishing constitutions, making decisions on distributing tokens to the contributors, etc.'"),
        "test_server": MessageLookupByLibrary.simpleMessage("Test Server"),
        "the_rank_is_based": MessageLookupByLibrary.simpleMessage("The rank below is based only on the amount of organically mined CAT by each individual. It doesn’t count the CAT that are transferred or purchased from others."),
        "there_is_no_collection": MessageLookupByLibrary.simpleMessage("There is no collection"),
        "this_field_is_required": MessageLookupByLibrary.simpleMessage("This field is required"),
        "this_user_is_exist_please_choose_another": MessageLookupByLibrary.simpleMessage("This user is exist, please choose another"),
        "token_balance": MessageLookupByLibrary.simpleMessage("Token Balance"),
        "tooltip_msg": MessageLookupByLibrary.simpleMessage("CAT (CryptoBadge Alliance Token) is the main currency of our blockchain ecosystem and indicates how much you have contributed to the prosperity of the CryptoBadge Network"),
        "top_10_universities": MessageLookupByLibrary.simpleMessage("Top 10 Universities"),
        "top_miners": MessageLookupByLibrary.simpleMessage("Top Miners"),
        "top_miners_upcase": MessageLookupByLibrary.simpleMessage("TOP MINERS"),
        "top_referrers": MessageLookupByLibrary.simpleMessage("Top referrers"),
        "traffic": MessageLookupByLibrary.simpleMessage("Traffic Mining"),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again"),
        "uncategoried": MessageLookupByLibrary.simpleMessage("Uncategoried"),
        "universities": MessageLookupByLibrary.simpleMessage("Universities"),
        "university_ranking_title": MessageLookupByLibrary.simpleMessage("University Ranking"),
        "update_password": MessageLookupByLibrary.simpleMessage("Update password"),
        "update_password_failed": MessageLookupByLibrary.simpleMessage("Update password failed. Please check your password again."),
        "verification": MessageLookupByLibrary.simpleMessage("Verification"),
        "verify_password": MessageLookupByLibrary.simpleMessage("Verify Password"),
        "view": MessageLookupByLibrary.simpleMessage("View"),
        "we_just_emailed_a_confirmation_link_to": m2,
        "what_is_cat": MessageLookupByLibrary.simpleMessage("What is CAT?"),
        "where_to_share": MessageLookupByLibrary.simpleMessage("Where to share?"),
        "will_be_inscribed_on_your_badge": MessageLookupByLibrary.simpleMessage("will be inscribed on your badge"),
        "win_your_terran_badge": MessageLookupByLibrary.simpleMessage("Win your Terran Badge"),
        "winners": MessageLookupByLibrary.simpleMessage("Winners"),
        "won": MessageLookupByLibrary.simpleMessage("won"),
        "you_are_the_citizen": m12,
        "you_can_also": MessageLookupByLibrary.simpleMessage("You can also start mining CAT."),
        "you_won_badge": m10,
        "your_collection_name": MessageLookupByLibrary.simpleMessage("Your collection name"),
        "your_email": MessageLookupByLibrary.simpleMessage("Your email"),
        "your_email_have_not_confirm_yet": MessageLookupByLibrary.simpleMessage("Your account has not confirmed yet. Please check out your mailbox again!"),
        "your_name": MessageLookupByLibrary.simpleMessage("Your name"),
        "your_password_is_acceptable": MessageLookupByLibrary.simpleMessage("Your password is acceptable, but only minimally secure."),
        "your_password_is_easily_guessable": MessageLookupByLibrary.simpleMessage("Your password is easily guessable. You can do better!"),
        "your_password_is_great_nice_work": MessageLookupByLibrary.simpleMessage("Your password is great. Nice work!"),
        "your_verify_password_is_not_matching": MessageLookupByLibrary.simpleMessage("Your verify password isn’t matching!"),
      };
}
