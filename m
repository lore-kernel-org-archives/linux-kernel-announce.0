Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5775305067
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 10:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764586723; cv=none; b=jHcGr8BytOJZtUaaFHdlznVjxs3aVxKwB4WZa4DHTsAXqb87zSMR5O4q1bz4MsNTj1H6LkkRI2LCOsBNoJfv9lkPWhhpNFJlsmrsB/0CPrIHFHbUU/dsHAs8C2nAnieFD5SvGA0tzMAwA9CkgYKwvjkaEUlDDJBm8aUdRiuhTZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764586723; c=relaxed/simple;
	bh=81LrNWNL4zNsmM4w9VyIBk5wWreP+N0eX4QKPUvsu+E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mTO6wUkHWnpIMZOKPw8dg0WNzyJYjymxZavXO45AMA4MTN4SXJp4iajZepLbIYVk5Dg8Ju2FsxJlXpjhEVQwSrQdkTy0cQALqIbG7RzWe//1TdbzuD83p2NxSRZshRuzP592kWgz8Q5tSB1hoaAo5z9xdVy1mDrtYDhYXuheNi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1764586723;
	bh=81LrNWNL4zNsmM4w9VyIBk5wWreP+N0eX4QKPUvsu+E=;
	h=Subject:From:To:Date:From;
	b=GaIA28DY9c3DVNCU3J43H2ebCGIvKXxHAhbLrXrgaZv56P5bMov9mmv1QtlFiRdaW
	 EW+c6gwaGU62AjtFvljg1BMvTYQncMcpMtzYdv5cRQ0EhugEOtMbsr2ntaSIdgbgVB
	 l2ZMMGpCrXqHls0zXSFXnpoz/4NGj7soEiGlczog=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71899C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 10:58:43 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BB4EC380CECC
	for <linux-kernel-announce@vger.kernel.org>; Mon,  1 Dec 2025 10:55:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.60 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 01 Dec 2025 10:55:43 +0000
Message-Id: <20251201105543.release-6.12.60@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.60
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.60.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.60.xz

Linux kernel version 6.12.60 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.60.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.60.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.60.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.60/v6.12.59

