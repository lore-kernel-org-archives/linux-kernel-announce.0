Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B25B39022E
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 12:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779537615; cv=none; b=uW4339dt/54dXsE8BPsjVd+mDYhAnTuLXoafx0FnS5vnA+BP6YlbiZwgGMTF2dmdwgF9pg9XH1Lpa0ub2aycqfyOu1Ugy6gwTQg91pJmvIqyvOyKZx7EvZqdSirdgzQru9o2Okvy/R0gaPwaWITZ2NfosD4REX+KDMRompZ2kLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779537615; c=relaxed/simple;
	bh=3wJK97LeyD7D4zHP+3H/heI7Vz9uFTpaX/FIcmCiXtM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=iS/bd0Ht0815DeqS6FN3HKLGykWJ8XBkE3OvLEXFIAxyH/OkpRCriLrsJld5Madu365OWncYOy7jWruJo4It2rp2AgFnDFsrZvpODDT71MI1YFZiu2Z+cnJaZRCLUDFK6rjrHjFjMPs7WOBdoLQDFmTjyu21lQMtf1ZlxpovN5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779537615;
	bh=3wJK97LeyD7D4zHP+3H/heI7Vz9uFTpaX/FIcmCiXtM=;
	h=Subject:From:To:Date:From;
	b=w35pxqUM8XxXYi0DZg03un1HarFLtDGzWz78CuwnlaX2YiaK+brP60xwCi7A0Y+oU
	 VsI8rtf6C2PfdoaBHxOIOb+lvL3T1jbvBr1a6pduYfuR9ylirUHGP9D52TUptyxMys
	 xmncYVkOKgZOWcLwv6SnfkqM+VUIiC6NisQdT/to=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EBE61F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 12:00:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 199C93808205
	for <linux-kernel-announce@vger.kernel.org>; Sat, 23 May 2026 12:00:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.208 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 23 May 2026 12:00:22 +0000
Message-Id: <20260523120022.release-5.15.208@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.208
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.208.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.208.xz

Linux kernel version 5.15.208 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.208.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.208.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.208.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.208/v5.15.207

