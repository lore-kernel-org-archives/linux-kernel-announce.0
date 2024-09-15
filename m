Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BEB1C9874
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Sep 2024 17:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726422986; cv=none; b=a0/hkkZ446H/RzxZwaIeGnHLa1Xe5KgLwa86W3CXAWGIOT9fvUIyOw/036DBwVF/luzXxRyPCSWS0jcoC7hPNaLgqd1XYgPy89VkGjZQrAufFjRw7ZYyHpXtJ8F21Db+4uoRpv9xl15g6GjJDiAjeD4e3d/gaa6iVQ7SZqm9f9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726422986; c=relaxed/simple;
	bh=BXj+ymbDzgEnODx4LxIB5Zx1WIBndvdRW8KVIIZyYB4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=E/pfV501Md6fuFNUU5ENwo1aIZYzDoeTOrYd9nQJhu3+FtQ0TIPQDy+L7Gmwo9mfC/lLgUl9Yk/LExCNU4W8naXSYoXst6F9W2Q6rvQo2F+KUFqALPb02IJP/bIqcT+0hTn4+y8OGeN5SF4k2axEEnf48cRevY5eKJac3e1WVKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726422986;
	bh=BXj+ymbDzgEnODx4LxIB5Zx1WIBndvdRW8KVIIZyYB4=;
	h=Subject:From:To:Date:From;
	b=RYFoHl7KUBCL+NkaJDUixkqA/ICEhNepYoOL3/Pn7rm+3onjkA3byf27uibvTsNFn
	 E4PkwTK+G03ZT2JwKdBcE72+WNwRDGofFbsjz+QTkWHTeGSw4RVKKgZ6A2uEYM/XAw
	 BGBR7R3IyzFnM/0tHvkPii7aGyljR6R0Tllyz07I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AC89C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Sep 2024 17:56:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B460B3804C85
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Sep 2024 17:56:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 15 Sep 2024 17:56:25 +0000
Message-Id: <20240915175625.release-6.11@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.xz

Linux kernel version 6.11 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.11/v6.10

