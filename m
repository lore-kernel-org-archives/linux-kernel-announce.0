Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E9B6E5F6
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716648942; cv=none; b=aeSh8xaS6FgiIKn9F2S+0/e73OZgOU9lhcbW1/Z6NmLFbZdvaCm0/MMxiLjH0or0Fpvzzj83d/yNS1z3PIKIH/n7fpwcz4d1qUuxvHKaPFxhP+cLkzcyA41azUorYV1Qt9Gr1VyABbSI9AmmaitISMuQm9kp3ZVS6ku0sJ8wJnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716648942; c=relaxed/simple;
	bh=9Jhkbrj5r0azGMK4t2m/E+CGTTS1BoGgBwtGNjUC+jg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uRNu/LN6sgrjG3zl9/wfshQ8ysNX8poAYKyodbFDZ9EQzx26AzvPgD1JGsl//nvXZIfDgcfQUdkD0GIneva4i9W3iI9GpU9wQoQUFhzaz4TuF7yGVzeKuohWn+oUOe/xamWGCNABwNsGklmNW0DYAihTpl/GR8LDw+aNJ49cQjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716648942;
	bh=9Jhkbrj5r0azGMK4t2m/E+CGTTS1BoGgBwtGNjUC+jg=;
	h=Subject:From:To:Date:From;
	b=OPOUDF/h9QNvWOKV+52pEcXE9+VEmUqGHKh2B+fMv20++9N71EZ0fPO28iBfJnFBP
	 Zu4jyqeXv6MtHzZCddXhfOciM5NbIRE2D06bwGt6UwGBRm/mMQUlcsAdZby6vJNRIy
	 AavYXzq4ecE4GGZuVzP/5TzDCMNFmF3o8gzOR8+U=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5308DC2BD11
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:55:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 421D6C43617
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:55:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 May 2024 14:55:42 +0000
Message-Id: <20240525145542.release-6.8.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.11.xz

Linux kernel version 6.8.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.11/v6.8.10

