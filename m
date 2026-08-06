Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF36378D8D
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786037798; cv=none; b=cHh0hIVuSH+URsOudXCZqzQjC6/6vt8Q2YotdBvc6wlDzNdaIA3PQacA2uRMZuNWROwGKzVP1urq3onIYy0zlwP6Fb1cdZnJJV3SfVEW4fafyArG74BSkx65blzKV9Hq9Lj2D5cNFz0IJbQxXN46NhiwsceYN0HIJVfN7hqJjEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786037798; c=relaxed/simple;
	bh=8THE/LzSOJsVNeoc/zopN0QAfk2/ORbtOoKN34YwV+8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VC2vL0XJp+XN/fCfN3Yn6sFZElsLFHfiXKvwmWw2tOXepsQGYqflJWmVaCNrfNKRK9GYGAoGYhqVe5KmYGCZadi/MeuFH2dDeiepVDODO++n+rQJfKwbOiEcb97x8Fn2qKQAbWKDSFAIH6YcImsJkptwd6Ni475NgrBjuQsJ4a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786037798;
	bh=8THE/LzSOJsVNeoc/zopN0QAfk2/ORbtOoKN34YwV+8=;
	h=Subject:From:To:Date:From;
	b=PzMuvhIzBfotgMpfhlG2jnRmIDSAQPRsp0ADmDW4EIf2u1ZnTqgHxZET5UoIxegw5
	 5KGeuZOwZbTrmV42W2tlNqzkNBusePe/wW/A75W6C3r1NuhRZAPCv/R7ypXLea/5nb
	 DvyWzKLVO34kaGIdHHGimVvFF0WXNMWhTohfaQYA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55EB91F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:36:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D0A643809A0C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:35:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.263 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 06 Aug 2026 17:35:54 +0000
Message-Id: <20260806173554.release-5.10.263@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.263
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.263.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.263.xz

Linux kernel version 5.10.263 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.263.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.263.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.263.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.263/v5.10.262

