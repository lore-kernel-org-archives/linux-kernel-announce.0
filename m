Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796EF20125F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Aug 2026 04:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786941376; cv=none; b=IHSzHIrPa5+ZHji374HG6VBbBidJdQYBzA20sJUeJVKsX9+oQnx4hjw1HJML80pedMwso95sDKoIO5DF18zd15JgCmVxNoHJwYTO1VtK0jwc/2lY7fKjCQoR8TdNa8936ukc3g/fhrQOvxWTcQcSGAjKucCXDe+xNI5MOdT4SKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786941376; c=relaxed/simple;
	bh=oX5DZnV+sS1EsNsgQ748oufCyDUSsKmsDlrK3ET603A=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XAVpO0/AEs3aCqCQZfYqcOvh7q66kwV2J9hxugpPzPoxhIeAQmQ3FgdVNVcoWazvWz6mrek9b0VNdUlqAZK4FleabMN8ipB6oadq/o8sf/SP9Xus7HTZ7xQNaEqDQuhvkvA9Cg8HpMy+/6zQyhm7DMN6tzSVLzqO57p22lZDzso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786941376;
	bh=oX5DZnV+sS1EsNsgQ748oufCyDUSsKmsDlrK3ET603A=;
	h=Subject:From:To:Date:From;
	b=fZqXQodHx/7TsshEmeRPWCZslK0FrtoLbIxkfe3h1TxM0tPTwullW5QPufUTNUNUL
	 o0DuKWOIGKR4LkyUINn8K30wlCNUqeoyJ3yL1uZwxajY1nHeqHFtShTyJCgTZvhHtE
	 nnI3eD1Uj80kGRcrZeVnWQUKMH4xUtG8VvBLh23A=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20ED91F000E9
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Aug 2026 04:36:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D35253924FEE
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Aug 2026 04:35:28 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 17 Aug 2026 04:35:27 +0000
Message-Id: <20260817043527.release-7.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.xz

Linux kernel version 7.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.2/v7.1

