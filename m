Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538091CBE8D
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731854132; cv=none; b=uUsJgW6LsZS/bGUygrJrldan1pQYE8ZOOEEg5kEymzwZcSvtwzg3tFD0O2GKcN7l4hxfzIkHCC59IgcKZvJfkzrpTnL/8HGXF4Nc2iJBJQzYznRrQHSayFXCnP0qiZdkPuTB6B9mvCsWGhZdNpHvUSH4xzhSE9sg5FxzM/MTTUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731854132; c=relaxed/simple;
	bh=DMacnLlRzHfNMiHbwYQ4GVoNPbD1gDgESnPDq3jYCzE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mYiggkJEyaMFKj02NOoxSmLeGY9mqpDqvz3CQ9iDcwwbYb6X17tiX7OeN1oag4fjbGUPQ7/ZQCG8Byd8tl2iTw2OgLAsN8WX91d4UQsomAaLEhhiYmPfGtevB06AJDVYMclsFTlX8l0dKEjw9YqCsTKkmpfxb7K+/K5nDBZilBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731854132;
	bh=DMacnLlRzHfNMiHbwYQ4GVoNPbD1gDgESnPDq3jYCzE=;
	h=Subject:From:To:Date:From;
	b=HaVLX6bZYqr+94Rv1XZFwnf+q1hB/w8qKhy6uOTpHX4viZx5Uh5iQ8kCQ0n9XRrPi
	 M3kIRmY572z2NuhkXkLZ9dY1Fak7J6AMg+0aLuHfD45DXtEESmbQh4x5atA+6onTwz
	 jWVtwA8o/cyLQ3Ebg80prPT+pKSmPbPipG4n2YrY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E83BDC4CED7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:35:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 382773809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:35:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.62 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 Nov 2024 14:35:42 +0000
Message-Id: <20241117143542.release-6.6.62@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.62
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.62.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.62.xz

Linux kernel version 6.6.62 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.62.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.62.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.62.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.62/v6.6.61

