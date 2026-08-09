Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F2B370AD4
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786300919; cv=none; b=s7cHxTw9dWINcUchV+aSdPFY7TFxAdL1eBoohQM2M6mJvsqpsiT7n7Fh376GNqveofxm54QOulBytK+0Y9qFbeDAbjdA4pftuWSGiSJBBv2jLLllS9UbFIf6WcD7l+k8wgpRWjYSsy9X9QyD+pRZ/beUwtFvELh1BBk7uc7gbSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786300919; c=relaxed/simple;
	bh=FI0N3TOPOGj7HcL/o/gE5jkJZ4m/bC80PC3LGPdNGdo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=oYxhPTUu29ts+zbd73zVbSg0z3ttb/qA5bNmAF0A3ZiO+dOo2hT9EXv/yYVg/R8ziKyXE+jZmyvwlGww4ag6UAou27b9Ia5i6g9Wv4fb/qQgbJGcNtpQ7ggEQxwR36K9e05zPCLWmbc6X56ZTPpH5TrwigHfNKwKr02KpKZM4TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786300919;
	bh=FI0N3TOPOGj7HcL/o/gE5jkJZ4m/bC80PC3LGPdNGdo=;
	h=Subject:From:To:Date:From;
	b=ne42VY69ga2IGlfz+i4BTEuC/a7ZYqwXwx4meL0mNURLon2tV3CDeWYCW7Zb5BwTy
	 YKzYmCcB1UYO2iwq8o7qTmW6prn8oJpPLsLm0VwwaTMoJD3GbroivfFaZGgSZO9uJ8
	 hZakCZ9vlo7i+I03mbw89MiAZbliR/ovkuJnQj5I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26FF31F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:41:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 967B8392446D
	for <linux-kernel-announce@vger.kernel.org>; Sun,  9 Aug 2026 18:41:16 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.103 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 09 Aug 2026 18:41:15 +0000
Message-Id: <20260809184115.release-6.12.103@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.103
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.103.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.103.xz

Linux kernel version 6.12.103 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.103.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.103.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.103.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.103/v6.12.102

