Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B086A43CE7F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 12:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789387888; cv=none; b=S9lXAef+5orDufXjcJGbFQJdpjwfGFM5engeasta4j0XMf3g1mN1b6bVkACkZYEhpLU1cibbXjMCQmgf9F62YnfShDpp9BMZyZEEWRRppdAj9iA+PE5Fy4tHs3+wA6vi02D0paiF/9UMXvLDzgdPoo+xbJJBFvfpWsFmG+T1Ujc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789387888; c=relaxed/simple;
	bh=R8g/Qpt/qw2ouOP4IgLo+VSE9aSo81l9ujmPSru8CNY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MtMw01SHfLsywbISNmbWSE81iRfcYi3tOGBMVxzopq1QCZQj72ci0wUSSKxRXWXmHdoyFcMHKetg8XFgd8ZJ+pjLZsc8S2lBtKMEFn6hJWHy84qB1GCuLP8Ah23FDbWsl3RmeQGegHK9s9lZqdJv147j6vmRhOyUED7XfvP5kPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789387888;
	bh=R8g/Qpt/qw2ouOP4IgLo+VSE9aSo81l9ujmPSru8CNY=;
	h=Subject:From:To:Date:From;
	b=sEBktcPRjBO6smBaTU7rmGEH6LDkJpt7DHJGE8rCpmBsO8HPvhBcSOLQl83BVMzNw
	 GbSxs/Z124rF+GMHzEd/jjorzD3tU2MbkzRePVKEh3SARzIOXCqNz6htMjeb0ky59G
	 +T7EWPW1PWb9dqY88o0xtx98D5EqxTUDH3csZrSY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EECD1F00893
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 12:11:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 93B283924457
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Sep 2026 12:10:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.52 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Sep 2026 12:10:21 +0000
Message-Id: <20260914121021.release-6.18.52@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.52
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.52.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.52.xz

Linux kernel version 6.18.52 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.52.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.52.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.52.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.52/v6.18.51

