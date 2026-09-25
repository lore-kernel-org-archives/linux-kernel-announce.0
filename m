Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EEB37D12E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Sep 2026 15:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790348811; cv=none; b=VeLEAEuXVDcxZ4Mz0CHCjO3KhFZb2vD7m3JS2AR5kw46k0odzo2ipTa6LKB+GYw3AR1OGlBZia6BEDz9jHevSc2incg3KFDJ+htveinjnI28y3xKR8sqjVaB9AIgMDpFskb2hqG0+ttCuvoOckxWsLgurZV1RCz/6hCbgRYVzfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790348811; c=relaxed/simple;
	bh=9aaxeRXpxSmN4pXip99xfD+8FVxn8WWBJVqwXQaMhUk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nwNENxxDfBVHOKw81T9T1O0LiedcYrPOBTgFJfOcX50dD0m2AusZYJRwp4aM5vyLaZcpqmriE+v3KhX5S+WU0MZpRj7vyq6BA2nVFiPm5S/QwWuiDWZfyXM5AdKv8eisF5BCqcREqjmYCpJ8k7L3uuD7OWkKpB0jdlofloRQCtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1790348811;
	bh=9aaxeRXpxSmN4pXip99xfD+8FVxn8WWBJVqwXQaMhUk=;
	h=Subject:From:To:Date:From;
	b=fIC8Z+yCu0o8H72I+E4UBJyjVuwCaGtOpAJ0E7+kzZKUeDAHEIBuoo6hysqloEttX
	 FmDZ4No2vIM7Zn3BhCWcEZ6z6lyVaTgBQ8cTRmIJZ9iDtCyBW5aB07naYyJ2puL9/r
	 /YQ982tgdrSfoUWDfRdN84PgI2OtPYKh+Zh99Fho=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB3971F00893
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Sep 2026 15:06:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C5853AA7303
	for <linux-kernel-announce@vger.kernel.org>; Fri, 25 Sep 2026 15:05:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 25 Sep 2026 15:05:24 +0000
Message-Id: <20260925150524.release-7.2.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.8.xz

Linux kernel version 7.2.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.8/v7.2.7

