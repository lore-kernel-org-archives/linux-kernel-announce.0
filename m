Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6E0EAD7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747551300; cv=none; b=U2EbGfc/j+2vqKXVmdsArToXcDw3dr7vquth5kD/vu/7WE2cyUW0/XaCAwBF7GxPvJpD7ERNBqvUOFX8PeWS+qOQPCxZoQw2lsClJ3MvBAp8oeaY2awln5YpSdI9G9nKlEjOZUFfYeIeUxSfspnrkO/U4dWUv7YNhBqeWB49uRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747551300; c=relaxed/simple;
	bh=FCG3DHd/G74UHGfrbLXGZ92l/+a8euVDNpua0Rdmamg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NFPXlXgKMecBIVPVX0MWfe0JHrG2WF/wCGA2XaqIt6DV3dSe63sYu6eJTd/eu4lgqoLOmwuNMh8e7bUEFioWE+AuXBP5Ob3fVrLfN6o0wEZ/864msEwvKnfZq+RjjoY6fNWbACLxrJ//ZwkcqUHvwabUda3YFagsARA6NFdKrPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747551300;
	bh=FCG3DHd/G74UHGfrbLXGZ92l/+a8euVDNpua0Rdmamg=;
	h=Subject:From:To:Date:From;
	b=d+CZJxJY8NOzL+dXmWkUeR4lviZz+Z+zNg8jJKRpbtVPZ+cn0JeelTDBFKMoRABvj
	 nXLtu1Xmj21aGi71g8DyBY6c5LuFxZ+SPVdoLrFbq9a4vmAQKLMMcFAGZJzQwBophB
	 SFUbOy0ItOYFf+fW/8JIEGqqz4xK4AwNYfTA5NQ0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD37BC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:54:59 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74649380AAFB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 18 May 2025 06:55:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 18 May 2025 06:55:35 +0000
Message-Id: <20250518065535.release-6.14.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.7.xz

Linux kernel version 6.14.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.14.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.14.7/v6.14.6

