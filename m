Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2903CC9E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787899610; cv=none; b=ja8akbqXqXdYBpEjXd0JYnEeNonHhWGvvdScyz+RduxkgnLx6nsb0wY3cgWxD+MomWiVrPcVqugQIVrE+IFTpup2iQGxu/K1+fDbH3RjHAtnT3QZBtgWVBMIAdyHluuDNPVHA3vl8bbw9CIChFp7MZDtkQqy1dsKqnLkvYFsLbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787899610; c=relaxed/simple;
	bh=expbJyYxd3OqMJkshOZz6im9y9UKqlWZoEIMEUyUjbc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=K4j/reUop0e6pt58JRFYkHnR/IM44ZBL4jjDDdvfWkjGIevX5Q/X/pfVDoPqvO+Ay9stkNEHscksiji7XuNoVzrdC3Kr/z3HWWfHlPRzUZz4qZD0qvKsjrO7nZapFCpBD+UBaczdWOV4O2AWk3XNevPgILhIwtcRGNZB+MWH19A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787899610;
	bh=expbJyYxd3OqMJkshOZz6im9y9UKqlWZoEIMEUyUjbc=;
	h=Subject:From:To:Date:From;
	b=qgHbBYtF/Ltt0tW51/bzWqPXYnOn5qbIKpIj+qinlbH9YDBqlGLcvpMB+yX+PGZEH
	 OGBieozzKwTeXK3tiV2lL9N5LbLxy32FD5T+iIR18vMcFSx1L0cRPnDn/1UyP/UIWQ
	 m/nAFzOFiPGdgGdcaobajXgVxq7zH9LbaV3BNwb0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FE521F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:46:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 938F73809A90
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:45:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.155 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Aug 2026 06:45:52 +0000
Message-Id: <20260828064552.release-6.6.155@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.155
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.155.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.155.xz

Linux kernel version 6.6.155 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.155.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.155.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.155.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.155/v6.6.154

