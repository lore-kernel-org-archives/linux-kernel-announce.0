Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAB5490C16
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788352844; cv=none; b=RhC8E1k4oDNpIp0Fv+czNNWH62qFS7q88rKXIhNQdYB5ehLmY5Viv1D+IZ0uLqb4WhpGWKmPru+Z22VKdAsdnf3i2cv2kJyXfrSr/ijuR+9jo/78w8fEvppIGr8avNEFwADQjsEMJIO5VM5IJ1z82LnxZ6aDG7l66yJRGzy4wh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788352844; c=relaxed/simple;
	bh=7IfEvupLY30HKNZTL2cSjbk9wOVnvG8/0ODrEL3684U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=js70t1mhvJI/X8u9OJPgJHcbfkiH0AB0XVw3ZnOxBekBty/foJh5wQq7TplmqRWj6K7dkYsa7nL5ycpn2o7rWnvcWawuBjWx48EVjBqj8+izF3dlF70rngt/GkW86O9kMUfcSt8UsnarTT0kiBOtIIgucRfUo1GKK9kX4aHHohM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788352844;
	bh=7IfEvupLY30HKNZTL2cSjbk9wOVnvG8/0ODrEL3684U=;
	h=Subject:From:To:Date:From;
	b=by58L83TTNZ+Pd6GKbCBWmtm5diiq21TgY5S2FeaN9Z+5wBYraNal4UQZD5wtUK6C
	 iuMT+Gj/IWPW+Y/nE8qZYNEnzZb193OQBNz6jQt+C5iwcd1d33bBTuv1YGvefCmdUx
	 izZq0JWbh9fRXs3ui+ZWyZon6oXfmXZwaTY10TsE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDF041F00A3F
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:40:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1E90839263B3
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 12:39:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.220 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 02 Sep 2026 12:39:44 +0000
Message-Id: <20260902123944.release-5.15.220@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.220
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.220.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.220.xz

Linux kernel version 5.15.220 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.220.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.220.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.220.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.220/v5.15.219

